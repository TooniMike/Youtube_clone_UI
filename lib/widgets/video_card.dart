import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:miniplayer/miniplayer.dart';
import '../data.dart';
import 'package:timeago/timeago.dart' as timeago;
import '../screens/nav_screen.dart';

class VideoCard extends StatelessWidget {
  final Video video;
  // final bool hasPadding;
  final VoidCallback? onTap;
  const VideoCard ({
    super.key, 
    required this.video, 
    // this.hasPadding = false, 
    this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        context.read(selectedVideoProvider).state = video;
        context.read(miniPlayerControllerProvider).state.animateToHeight(state: PanelState.MAX);
        if (onTap != null) onTap!();
      },
      child: Column(
        children: [
          Stack(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 
                  // hasPadding? 12.0 : 
                  0),
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
            padding: const EdgeInsets.fromLTRB(12, 20, 12, 12),
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
                        const SizedBox(height: 5,),
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