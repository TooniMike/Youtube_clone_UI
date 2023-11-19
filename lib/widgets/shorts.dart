import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:you_tube/config/palette.dart';

import '../data.dart';

class Shorts extends StatelessWidget {
  final List<Short> shorts;
  const Shorts({super.key, required this.shorts});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 220.0,
      // color: Colors.white,
      child: ListView.builder(
          padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 8.0),
          scrollDirection: Axis.horizontal,
          itemCount: shorts.length,
          itemBuilder: (BuildContext context, int index) {
            final Short short = shorts[index];
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4.0),
              child: _Shorts(shorts: short),
            );
          }),
    );
  }
}

class _Shorts extends StatelessWidget {
  final Short? shorts;
  const _Shorts({
    super.key,
    this.shorts,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(12.0),
          child: CachedNetworkImage(
            imageUrl: shorts!.shortImageUrl,
            height: double.infinity,
            width: 150.0,
            fit: BoxFit.cover,
          ),
        ),
        Container(
          height: double.infinity,
          width: 110.0,
          decoration: BoxDecoration(
            gradient: Palette.shortGradient,
            borderRadius: BorderRadius.circular(12.0),
          ),
        ),
        Positioned(
            bottom: 25.0,
            left: 8.0,
            right: 8.0,
            child: Text(
              shorts!.title,
              style: const TextStyle(
                  overflow: TextOverflow.ellipsis, fontWeight: FontWeight.bold),
              softWrap: true,
              maxLines: 2,
            )),
        Positioned(
            bottom: 5.0,
            left: 8.0,
            right: 8.0,
            child: Text(
              shorts!.views,
            )),
        const Positioned(right: 5.0, top: 8.0, child: Icon(Icons.more_vert))
      ],
    );
  }
}
