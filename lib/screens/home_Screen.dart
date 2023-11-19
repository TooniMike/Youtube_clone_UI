import 'package:flutter/material.dart';
import '../data.dart';
import '../widgets/button.dart';
import 'package:timeago/timeago.dart' as timeago;
import '../widgets/shorts.dart';
import '../widgets/widget.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: CustomScrollView(
          slivers: [
            const CustomSliverAppBar(),
            SliverToBoxAdapter(
              child: Padding(padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 35,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 56, 56, 56),
                        borderRadius: BorderRadius.circular(15)
                      ),
                      child: IconButton(                    
                        onPressed: (){}, 
                        icon: const Icon(Icons.explore, color: Colors.white,),
                        ),
                    ),
                    const SizedBox(width: 5,),
                    Container(
                    height: 35,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15)
                    ),
                    child: TextButton(                    
                      onPressed: (){}, 
                      // icon: Icon(icon, color: Colors.white,),
                      child: const Text('All', style: TextStyle(color: Colors.black),)
                      ),
                  ),
                    const SizedBox(width: 5,),
                    const WidgetButton(title: 'Music', ),
                    const SizedBox(width: 5,),
                    const WidgetButton(title: 'Sermon', ),
                    const SizedBox(width: 5,),
                    const WidgetButton(title: 'Podcast', ),
                    const SizedBox(width: 5,),
                    const WidgetButton(title: 'Anime', ),
                    
                  ]
                  ),
              ),
              ),
            ),

            SliverPadding(
                padding: const EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 5.0),
                sliver: SliverToBoxAdapter(
                  child: _SingleVideoCard(video: videos[1]),
                ),
              ),
            
            SliverPadding(
                padding: const EdgeInsets.fromLTRB(10, 10, 10, 2),
                sliver: SliverToBoxAdapter(
                  child: Row(
                    children: [
                      Image.asset('assets/shorts.png', height: 20, width: 20,),
                      const SizedBox(width: 10),
                      const Text('Shorts', style: TextStyle(fontWeight: FontWeight.bold),)
                    ],
                  )
                ),
              ),
            SliverPadding(
                padding: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 5.0),
                sliver: SliverToBoxAdapter(
                  child: Shorts(shorts: shortVideos),
                ),
              ),
            SliverPadding(
              padding: const EdgeInsets.only(bottom: 60.0),
              sliver: SliverList(
                delegate: SliverChildBuilderDelegate((context, index) {
                  final video = videos[index];
                  return VideoCard(video: video);
                },
                childCount: videos.length,
                )
                ),
              )
          ],
        ),
      ),
    );
  }
}


class _SingleVideoCard extends StatelessWidget {
  final Video video;
  const _SingleVideoCard ({super.key, required this.video});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){},
      child: Column(
        children: [
          Stack(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 5.0),
                child: Image.network(
                  video.thumbnailUrl,
                  height: 220.0,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
                ),
                Positioned(
                  bottom: 20.0,
                  // right: hasPadding? 20.0 : 8.0,
                  right: 20,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.black54,
                    ),
                    padding: const EdgeInsets.all(4.0),
                    child: Text(video.duration,
                    style: Theme.of(context).textTheme.titleSmall!
                    .copyWith(color: Colors.white),
                    ),
                  ),
                )
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: () => print('Navigate to profile'),
                  child: CircleAvatar(
                    foregroundImage: NetworkImage(video.dp),
                  ),
                ),
                const SizedBox(width: 8.0,),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Flexible(
                        child: Text(video.title,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: Theme.of(context).textTheme.headlineMedium!.copyWith(fontSize: 15.0, fontWeight: FontWeight.bold, color: Colors.white),
                        ),
                        ),
                        const SizedBox(height: 8.0,),
                        Flexible(
                          child: Text(
                            '${video.author} · ${video.viewCount} views · ${timeago.format(video.timestamp)}',
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: Theme.of(context).textTheme.bodySmall!.copyWith(fontSize: 14.0),
                          )
                          )
                    ],
                    ),
                  ),
                  GestureDetector(
                    onTap: (){},
                    child: const Icon(Icons.more_vert, size: 20.0),
                  )
              ],
            ),
          )
        ],
      ),
    );
  }
}