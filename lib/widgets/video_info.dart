import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import '../data.dart';
import 'package:timeago/timeago.dart' as timeago;

class VideoInfo extends StatelessWidget {
  final Video video;
  const VideoInfo({super.key, required this.video});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            video.title,
            maxLines: 2,
            style: const TextStyle(
                fontSize: 17,
                color: Colors.white,
                fontWeight: FontWeight.bold,
                overflow: TextOverflow.ellipsis),
          ),
          const SizedBox(height: 8.0),
          Row(
            children: [
              Text(
                '${video.viewCount} views  ${timeago.format(video.timestamp)}',
                style: const TextStyle(fontSize: 13, color: Colors.grey),
              ),
              const SizedBox( width: 5,),
              const Text('...more', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),)
            ],
          ),
          const Divider(),
          // _AuthorInfo(user: video.author),
          _AuthorInfo(video: video),
          const Divider(),
          SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: _ActionRow(video: video)),
          const Divider(),
          Container(
            decoration: BoxDecoration(
              color: const Color.fromARGB(95, 119, 118, 118),
              borderRadius: BorderRadius.circular(10)
            ),
            child: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text('Comments', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                      SizedBox(width: 3,),
                      Text('3.1k')
                    ],
                  ),
                  SizedBox(height: 5,),
                  Row(
                    children: [
                      CircleAvatar(foregroundImage: AssetImage('assets/profile_pic.png'),
                      minRadius: 18,
                      ),
                      SizedBox(width: 5,),
                      Text(
                        'Lorem ipsum dolor sit amet Curabitur',
                      style: TextStyle(overflow: TextOverflow.ellipsis),
                      maxLines: 3,
                      softWrap: true,
                      overflow: TextOverflow.ellipsis,
                      ),
                      Spacer(),
                      Icon(Icons.keyboard_arrow_down_rounded)
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class _ActionRow extends StatelessWidget {
  final Video video;
  const _ActionRow({super.key, required this.video});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      // crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          width: 100,
          height: 35,
          decoration: BoxDecoration(
              color: const Color.fromARGB(95, 119, 118, 118),
              borderRadius: BorderRadius.circular(20)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                width: 2,
              ),
              const Icon(
                AntDesign.like2,
                size: 18,
              ),
              Text(
                video.likes,
                style: const TextStyle(fontSize: 14),
              ),
              const SizedBox(
                width: 2,
              ),
              Container(
                width: 0.5, // Width of the separator
                height: 26, // Height of the separator
                color: Colors.white, // Color of the separator
              ),
              const SizedBox(
                width: 2,
              ),
              const Icon(
                Icons.thumb_down_alt_outlined,
                size: 18,
              ),
              const SizedBox(
                width: 2,
              ),
            ],
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        _buildAction(context, Icons.reply, 'Share', 70),
        const SizedBox(
          width: 10,
        ),
        _buildAction(context, Icons.redo_rounded, 'Remix', 70),
        const SizedBox(
          width: 10,
        ),
        _buildAction(context, Icons.download, 'Download', 100),
        const SizedBox(
          width: 10,
        ),
        _buildAction(context, Icons.checklist_sharp, 'Clip', 70),
        const SizedBox(
          width: 10,
        ),
        _buildAction(context, Icons.library_add_outlined, 'Save', 75),
      ],
    );
  }

  Widget _buildAction(BuildContext context, IconData icon, String label, double width) {
    return Container(
      width: width,
      height: 35,
      decoration: BoxDecoration(
          color: const Color.fromARGB(95, 119, 118, 118),
          borderRadius: BorderRadius.circular(20)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: () {},
            child: Row(mainAxisSize: MainAxisSize.min, children: [
              Icon(icon),
              const SizedBox(height: 6.0),
              Text(label,
                  style: const TextStyle(fontSize: 12, color: Colors.white)),
            ]),
          ),
        ],
      ),
    );
  }
}

class _AuthorInfo extends StatelessWidget {
  // final User user;
  final Video video;
  // final List<Video> videos;
  const _AuthorInfo({super.key, required this.video,
  // required this.user
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => print('Navigate to profile'),
      child: Row(
        children: [
          CircleAvatar(
            foregroundImage: NetworkImage(video.dp),
            // foregroundImage: AssetImage('assets/profile_pic.png'),
          ),
          const SizedBox(width: 8.0),
          Text(
            video.author,
            // 'Tooni Mike',
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context)
                .textTheme
                .headlineLarge!
                .copyWith(fontSize: 15.0, color: Colors.white),
          ),
          const SizedBox(width: 10.0),
          Text(
            // user.subscribers,
            '3.1M',
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style:
                Theme.of(context).textTheme.bodySmall!.copyWith(fontSize: 14.0),
          ),
          const Spacer(), // This pushes the Container to the end
          Container(
            height: 35,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18),
              color: Colors.white,
            ),
            child: TextButton(
              onPressed: () {},
              child: const Text('Subscribe',
                  style: TextStyle(fontSize: 14, color: Colors.black)),
            ),
          ),
        ],
      ),
    );
  }
}
