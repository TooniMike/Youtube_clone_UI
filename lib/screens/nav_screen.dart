import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:miniplayer/miniplayer.dart';
import '../data.dart';
import 'home_Screen.dart';
import 'video_screen.dart';

final selectedVideoProvider = StateProvider<Video?>((ref) => null);
final miniPlayerControllerProvider = StateProvider.autoDispose<MiniplayerController>(
  (ref) => MiniplayerController()
  );

class NavScreen extends StatefulWidget {

  const NavScreen({super.key});

  @override
  State<NavScreen> createState() => _NavScreenState();
}

class _NavScreenState extends State<NavScreen> {
  static const double _playerMinHeight = 60.0;
  int _selectedIndex = 0;

  final _screens = [
    const HomeScreen(),
    const Scaffold(body: Center(child: Text('Explore'),),),
    const Scaffold(body: Center(child: Text('Add'),),),
    const Scaffold(body: Center(child: Text('Subscription'),),),
    const Scaffold(body: Center(child: Text('Library'),),),
    
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer(
        builder: (context, watch, _){
          final selectedVideo = watch(selectedVideoProvider).state;
          final miniPlayerController = watch(miniPlayerControllerProvider).state;
        
        return Stack(
          children: _screens
          .asMap()
          .map((i, screen) => MapEntry(
            i, Offstage(
            offstage: _selectedIndex != i,
            child: screen,
          ),
          ),
          ).values.toList()..add(
            Offstage(
              offstage: selectedVideo == null,
              child: Miniplayer(
                controller: miniPlayerController,
                minHeight: _playerMinHeight, 
                maxHeight: MediaQuery.of(context).size.height, 
                builder: (height, percentage){
                  if(selectedVideo == null){
                    return const SizedBox.shrink();
                  } if(height <= _playerMinHeight + 50.0){
                    return Container(
                      color: Theme.of(context).scaffoldBackgroundColor,
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Image.network(selectedVideo.thumbnailUrl, height: _playerMinHeight - 4.0,
                              width: 120.0,
                              fit: BoxFit.cover,
                              ),
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Flexible(
                                        child: Text(
                                          selectedVideo.title,
                                          overflow: TextOverflow.ellipsis,
                                          style: Theme.of(context).textTheme.bodyLarge!.copyWith(fontWeight: FontWeight.w500),
                                        ),
                                        ),
                                        Flexible(
                                          child: Text(
                                            selectedVideo.author,
                                            overflow: TextOverflow.ellipsis,
                                            style: Theme.of(context).textTheme.bodySmall!.copyWith(fontWeight: FontWeight.w500),
                                          ),
                                          ),
                                    ],
                                  ),
                                  )
                                ),
                                IconButton(
                                  onPressed: (){}, 
                                  icon: const Icon(Icons.play_arrow)
                                  ),
                                  IconButton(
                                  onPressed: (){
                                    context.read(selectedVideoProvider).state = null;
                                  }, 
                                  icon: const Icon(Icons.close)
                                  ),
                            ],
                            )
                        ]
                        ),
                    );
                  }
                  return const VideoScreen();
                }
                ),
            )
          )
        );
        }
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color.fromARGB(221, 15, 15, 15),
        type: BottomNavigationBarType.fixed,
        onTap: (i) => setState(() => _selectedIndex = i),
        selectedIconTheme: const IconThemeData(
          size: 35.0,
          color: Colors.white
        ),
        unselectedIconTheme: const IconThemeData(
          size: 30.0,
          color: Colors.white
        ),
        currentIndex: _selectedIndex,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            activeIcon: Icon(Icons.home),
            label: 'Home',
            ),
            BottomNavigationBarItem(icon: ImageIcon(AssetImage('assets/shortsOutline.png'),
            size: 30.0,
            ), 
            label: 'Shorts'
            ),
            BottomNavigationBarItem(
            icon: Icon(Ionicons.md_add_circle_outline,),
            // activeIcon: Icon(Icons.add_circle),
            label: 'Add',
            ),
            BottomNavigationBarItem(
            icon: Icon(Icons.subscriptions_outlined),
            activeIcon: Icon(Icons.subscriptions),
            label: 'Subscriptions',
            ),
            BottomNavigationBarItem(
            icon: Icon(Icons.video_library_outlined),
            activeIcon: Icon(Icons.video_library),
            label: 'Library',
            ),
        ],
      ),
    );
  }
}