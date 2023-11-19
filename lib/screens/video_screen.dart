import 'package:flutter/material.dart';
import 'package:flutter_riverpod/all.dart';
import 'package:miniplayer/miniplayer.dart';
import 'package:you_tube/screens/nav_screen.dart';
import '../data.dart';
import '../widgets/video_info.dart';
import '../widgets/widget.dart';

class VideoScreen extends StatefulWidget {
  const VideoScreen({super.key});

  @override
  State<VideoScreen> createState() => _VideoScreenState();
}

class _VideoScreenState extends State<VideoScreen> {
  ScrollController? _scrollController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _scrollController = ScrollController();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _scrollController = ScrollController();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => context
      .read(miniPlayerControllerProvider)
      .state.animateToHeight(state: PanelState.MAX),
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Container(
          child: CustomScrollView(
            controller: _scrollController,
            shrinkWrap: true,
            slivers: [
              SliverToBoxAdapter(
                child: Consumer(
                  builder: (context, watch, _){
                    final selectedVideo = watch(selectedVideoProvider).state;
                    return SafeArea(
                      child: Column(
                        children: [
                          Stack(
                            children: [
                              Image.network(selectedVideo!.thumbnailUrl,
                              height: 220.0,
                              width: double.infinity,
                              fit: BoxFit.cover,
                              ),
                              IconButton(onPressed: () => context.read(miniPlayerControllerProvider)
                              .state.animateToHeight(state: PanelState.MIN),
                               icon: const Icon(Icons.keyboard_arrow_down),
                               ),
                               Positioned(
                                top: 5,
                                right: 145,
                                child: IconButton(onPressed: (){}, icon: const Icon(Icons.toggle_on_rounded, size: 35,))),
                               Positioned(
                                top: 5,
                                right: 100,
                                child: IconButton(onPressed: (){}, icon: const Icon(Icons.cast))),
                               Positioned(
                                top: 5,
                                right: 55,
                                child: IconButton(onPressed: (){}, icon: const Icon(Icons.closed_caption))),
                               Positioned(
                                top: 5,
                                right: 10,
                                child: IconButton(onPressed: (){}, icon: const Icon(Icons.settings_outlined))),
                            ],
                          ),
                          const LinearProgressIndicator(value: 0.4,
                          valueColor: AlwaysStoppedAnimation<Color>(Colors.red),
                          ),
                          VideoInfo(video: selectedVideo),
                        ],
                      )
                      );
                  }
                  ),
              ),
              SliverList(
                delegate: SliverChildBuilderDelegate((context, index) {
                  final video = suggestedVideos[index];
                  return VideoCard(
                    video: video,
                    // hasPadding: true, 
                    onTap: () => _scrollController!.animateTo(0, duration: const Duration(milliseconds: 200), curve: Curves.easeIn)
                  );
                },
                childCount: suggestedVideos.length
                ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}