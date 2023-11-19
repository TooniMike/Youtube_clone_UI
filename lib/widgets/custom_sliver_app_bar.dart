import 'package:flutter/material.dart';


class CustomSliverAppBar extends StatelessWidget {
  const CustomSliverAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: const Color.fromARGB(221, 15, 15, 15),
      floating: true,
      leadingWidth: 100.0,
      leading: 
      Padding(
        padding: const EdgeInsets.only(left: 12.0),
        child: Image.asset('assets/yt_logo_dark.png'),
      ),
      actions: [
        IconButton(
          onPressed: (){}, 
          icon: const Icon(Icons.cast)
          ),
          IconButton(
          onPressed: (){}, 
          icon: const Icon(Icons.notifications)
          ),
          IconButton(
          onPressed: (){}, 
          icon: const Icon(Icons.search)
          ),
          
          IconButton(
            iconSize: 40.0,
          onPressed: (){},  
          // icon: CircleAvatar(foregroundImage: NetworkImage(currentUser.profileImageUrl),)
          icon: const CircleAvatar(foregroundImage: AssetImage('assets/profile_pic.png'),)
          ),
      ],
      
    );
  }
}