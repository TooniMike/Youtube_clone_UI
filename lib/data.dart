class User {
  final String username;
  final String profileImageUrl;
  final String subscribers;

  const User({
    required this.username,
    required this.profileImageUrl,
    required this.subscribers,
  });
}

const User currentUser = User(
  username: 'Tooni Mikee',
  profileImageUrl:
      'https://yt3.ggpht.com/ytc/AAUvwniE2k5PgFu9yr4sBVEs9jdpdILdMc7ruiPw59DpS0k=s88-c-k-c0x00ffffff-no-rj',
  subscribers: '2.5M',
);

class Video {
  final String id;
  // final User author;
  final String dp;
  final String author;
  final String title;
  final String thumbnailUrl;
  final String duration;
  final DateTime timestamp;
  final String viewCount;
  final String likes;
  final String dislikes;

  const Video({
    required this.id,
    required this.author,
    required this.title,
    required this.thumbnailUrl,
    required this.duration,
    required this.timestamp,
    required this.viewCount,
    required this.likes,
    required this.dislikes,
    required this.dp,
  });
}

class Short {
  final String title;
  final String views;
  final String shortImageUrl;

  Short({required this.title, required this.views, required this.shortImageUrl});
}

final List<Video> videos = [
  Video(
    dp: 'https://i.pinimg.com/originals/fb/dc/f4/fbdcf4b9742a55e3434de52b6cba87fb.png',
    id: 'x606y4QWrxo',
    author: 'Mr Beast',
    title: 'I Won The Hardest Round Ever in Among US! | Mr Beast',
    thumbnailUrl: 'https://i.ytimg.com/vi/UcCJcV7S97c/maxresdefault.jpg',
    duration: '8:20',
    timestamp: DateTime(2021, 3, 20),
    viewCount: '10K',
    likes: '958',
    dislikes: '4',
  ),
  Video(
    dp: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQKzBfvk0zqCWyWaixxSsBH2k3r6y_SbNVa_MITY5Eo46dhKLVV4E5HDZ-OXItfiOLoeXo&usqp=CAU',
    id: 'x606y4QWrxo',
    author: 'Flutter',
    title: 'Introducing Flutter in Focus! - YouTube',
    thumbnailUrl: 'https://i.ytimg.com/vi/nQBpOIHE4eE/hq720.jpg?sqp=-oaymwEhCK4FEIIDSFryq4qpAxMIARUAAAAAGAElAADIQj0AgKJD&rs=AOn4CLDGJtw7EGI-fHxRG7phtkioIaLgCg',
    duration: '11:58',
    timestamp: DateTime(2022, 10, 23),
    viewCount: '81.1K',
    likes: '10;',
    dislikes: '4',
  ),
  Video(
    dp: 'https://i.pinimg.com/originals/fb/dc/f4/fbdcf4b9742a55e3434de52b6cba87fb.png',
    author: 'Mr Beast',
    id: 'vrPk6LB9bjo',
    title:
        '\$456,000 Squid Game In Real Life! | Mr Beast',
    thumbnailUrl: 'https://i.ytimg.com/vi/0e3GPea1Tyg/maxresdefault.jpg',
    duration: '22:06',
    timestamp: DateTime(2021, 2, 26),
    viewCount: '498M',
    likes: '16.8M',
    dislikes: '8',
  ),
  Video(
    dp: 'https://i1.sndcdn.com/avatars-29rrj8yjxGO30V9r-FCxepg-t500x500.jpg',
    id: 'ilX5hnH8XoI',
    author: 'Davido',
    title: 'Davido - FEEL (Official Audio) | Davido',
    thumbnailUrl: 'https://i.ytimg.com/vi/QL0KV5xMjvo/maxresdefault.jpg',
    duration: '2:37',
    timestamp: DateTime(2023, 3, 30),
    viewCount: '8.74M',
    likes: '50.9K',
    dislikes: '4',
  ),
  Video(
    dp: 'https://yt3.googleusercontent.com/ytc/AOPolaQDiZgK3qDIA3HFUOq9_QoiKRMWvYpB8293-O2NMA=s900-c-k-c0x00ffffff-no-rj',
    id: 'rJKN_880b-M',
    author: 'TRIBL',
    title: 'Crazy Love | TRIBL',
    thumbnailUrl: 'https://i.ytimg.com/vi/RqQPkEy0tLc/hq720.jpg?sqp=-oaymwEhCK4FEIIDSFryq4qpAxMIARUAAAAAGAElAADIQj0AgKJD&rs=AOn4CLCuxs00RHVwurT0hrSKOviaHVoqxw',
    duration: '2:47',
    timestamp: DateTime(2023, 2, 22),
    viewCount: '117M',
    likes: '800k',
    dislikes: '7',
  ),
  Video(
    dp: 'https://i.ytimg.com/vi/v_3PJZqaEow/hqdefault.jpg',
    id: 'rJKN_880b-M',
    author: 'Ninja',
    title: 'Zero Deaths in Chapter 4 Live',
    thumbnailUrl: 'https://i.ytimg.com/vi/m_KwO003aKY/maxresdefault.jpg',
    duration: '4:06:51',
    timestamp: DateTime(2023, 2, 22),
    viewCount: '208k',
    likes: '7.68k',
    dislikes: '7',
  ),
  Video(
    dp: 'https://yt3.googleusercontent.com/1pecBSe4Cbh8dP7xLORlFaP_gM6L4j1-Exz2WFtlg7J6ayScmPFhx_E99I-2SISIN2DY2N0aGw=s900-c-k-c0x00ffffff-no-rj',
    id: 'HvLb5gdUfDE',
    author: 'Maverick City',
    title: 'RUMORS | Tribl | Maverick City Music | LYRICS',
    thumbnailUrl: 'https://i.ytimg.com/vi/r3d9etZKi8E/maxresdefault.jpg',
    duration: '8:55',
    timestamp: DateTime(2021, 8, 8),
    viewCount: '18M',
    likes: '18.2K',
    dislikes: '45',
  ),
  Video(
    dp: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQKzBfvk0zqCWyWaixxSsBH2k3r6y_SbNVa_MITY5Eo46dhKLVV4E5HDZ-OXItfiOLoeXo&usqp=CAU',
    id: 'h-igXZCCrrc',
    author: 'Flutter',
    title: 'Flutter Course for Beginners | 37-hour Cross Platform App Development Tutorial',
    thumbnailUrl: 'https://i.ytimg.com/vi/vtGCteFYs4M/maxresdefault.jpg',
    duration: '36:39:22',
    timestamp: DateTime(2022, 2, 24),
    viewCount: '2.16M',
    likes: '50k',
    dislikes: '85',
  ),
  Video(
    dp: 'https://yt3.googleusercontent.com/ytc/AOPolaTTjfPjhZB1KR8C2MZROzRlD9SzbqaLoHYu5ziB-Q=s176-c-k-c0x00ffffff-no-rj',
    id: 'h-igXZCCrrt',
    author: 'Elevation Worship',
    title: 'Jireh | Elevation Worship & Maverick City',
    thumbnailUrl: 'https://i.ytimg.com/vi/mC-zw0zCCtg/maxresdefault.jpg',
    duration: '36:39:22',
    timestamp: DateTime(2022, 2, 24),
    viewCount: '171M',
    likes: '1.16M',
    dislikes: '85',
  ),
];

final List<Video> suggestedVideos = [
  Video(
    dp: 'https://yt3.googleusercontent.com/ytc/AOPolaQDiZgK3qDIA3HFUOq9_QoiKRMWvYpB8293-O2NMA=s900-c-k-c0x00ffffff-no-rj',
    id: 'rJKN_880b-M',
    author: 'TRIBl',
    title: 'Crazy Love | TRIBL',
    thumbnailUrl: 'https://i.ytimg.com/vi/RqQPkEy0tLc/hq720.jpg?sqp=-oaymwEhCK4FEIIDSFryq4qpAxMIARUAAAAAGAElAADIQj0AgKJD&rs=AOn4CLCuxs00RHVwurT0hrSKOviaHVoqxw',
    duration: '2:47',
    timestamp: DateTime(2023, 2, 22),
    viewCount: '117M',
    likes: '800k',
    dislikes: '7',
  ),
  Video(
    dp: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQKzBfvk0zqCWyWaixxSsBH2k3r6y_SbNVa_MITY5Eo46dhKLVV4E5HDZ-OXItfiOLoeXo&usqp=CAU',
    id: 'h-igXZCCrrc',
    author: 'Flutter',
    title: 'Flutter Course for Beginners | 37-hour Cross Platform App Development Tutorial',
    thumbnailUrl: 'https://i.ytimg.com/vi/vtGCteFYs4M/maxresdefault.jpg',
    duration: '36:39:22',
    timestamp: DateTime(2022, 2, 24),
    viewCount: '2.16M',
    likes: '50k',
    dislikes: '85',
  ),
  Video(
    dp: 'https://yt3.googleusercontent.com/ytc/AOPolaQDiZgK3qDIA3HFUOq9_QoiKRMWvYpB8293-O2NMA=s900-c-k-c0x00ffffff-no-rj',
    id: 'HvLb5gdUfDE',
    author: 'TRIBL',
    title: 'RUMORS | Tribl | Maverick City Music | LYRICS',
    thumbnailUrl: 'https://i.ytimg.com/vi/r3d9etZKi8E/maxresdefault.jpg',
    duration: '8:55',
    timestamp: DateTime(2021, 8, 8),
    viewCount: '18M',
    likes: '18.2K',
    dislikes: '45',
  ),
  Video(
    dp: 'https://cdns-images.dzcdn.net/images/artist/ad15b7f03325752d60db9e4d39c079ae/500x500.jpg',
    id: 'h-igXZCCrrc',
    author: 'Burna Boy',
    title: 'Burna Boy - Tested, Approved & Trusted [Official Audio]',
    thumbnailUrl: 'https://i.ytimg.com/vi/cdsUfPdEvY4/hq720.jpg?sqp=-oaymwEhCK4FEIIDSFryq4qpAxMIARUAAAAAGAElAADIQj0AgKJD&rs=AOn4CLANsMSGdlsSTlrHMmP7Q3lpZb89nA',
    duration: '3:22',
    timestamp: DateTime(2022, 2, 24),
    viewCount: '1.6M',
    likes: '7.9k',
    dislikes: '85',
  ),
  Video(
    dp: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQKzBfvk0zqCWyWaixxSsBH2k3r6y_SbNVa_MITY5Eo46dhKLVV4E5HDZ-OXItfiOLoeXo&usqp=CAU',
    id: 'h-igXZCCrrt',
    author: 'Flutter',
    title: 'Dart Streams - Flutter in Focus',
    thumbnailUrl: 'https://i.ytimg.com/vi/nQBpOIHE4eE/maxresdefault.jpg',
    duration: '8:10',
    timestamp: DateTime(2022, 2, 24),
    viewCount: '238k',
    likes: '5.3k',
    dislikes: '85',
  ),
  Video(
    dp: 'https://yt3.googleusercontent.com/dSnPV6JLYNgcN1ozt_jCIkdsks8wbAJoFctcnyNlgQml2Svrh9SavUy75lkvImSij2bqnSA8=s900-c-k-c0x00ffffff-no-rj',
    id: 'h-igXZCCrrt',
    author: 'Rema',
    title: 'Rema, Selena Gomez - Calm Down (Official Music Video)',
    thumbnailUrl: 'https://i.ytimg.com/vi/WcIcVapfqXw/maxresdefault.jpg',
    duration: '4:00',
    timestamp: DateTime(2022, 2, 24),
    viewCount: '623M',
    likes: '6.83M',
    dislikes: '85',
  ),
];


final List<Short> shortVideos = [
  Short(
    title: 'Rema - Calm Down Live #rema #calmdown #shorts',
    shortImageUrl:
        'https://i.ytimg.com/vi/xuBY49qSPWw/maxresdefault.jpg',
        views: '2.8M views'
  ),
  Short(
    title: 'Jordan Peterson CRUCIAL WARNING To Agreeable People',
    shortImageUrl:
        'https://i.ytimg.com/vi/xoCQz7uDa3Y/maxres2.jpg?sqp=-oaymwEoCIAKENAF8quKqQMcGADwAQH4AbYIgAKAD4oCDAgAEAEYNiBlKFwwDw==&rs=AOn4CLDfyaOdPXv6QQKTWFubS1RS1h4tLA',
        views: '5.1k views'
  ),
  Short(
    title: 'Jordan Peterson on the justice system #jordanpeterson #jordanpetersondaily',
    shortImageUrl:
        'https://i.ytimg.com/vi/VSF8BcRgrd4/hq2.jpg?sqp=-oaymwEoCOADEOgC8quKqQMcGADwAQH4AYwCgALgA4oCDAgAEAEYRiBlKGUwDw==&rs=AOn4CLCDiCTb5HXD3tTn9iuUVTevKZRbZQ',
        views: '105k views'
  ),
  Short(
    title: 'Get Out Of Your Head & Stay Hard [David Goggins]',
    shortImageUrl:
        'https://i.ytimg.com/vi/_EGm-wwpHvI/maxresdefault.jpg',
        views: '50.9k views'
  ),
  Short(
    title: 'Tesla CEO, Elon Musk, announces his new AI venture... #tesla #elonmusk #elonmuskai #youtubeshorts',
    shortImageUrl:
        'https://i.ytimg.com/vi/ziuOPAB02r0/maxres2.jpg?sqp=-oaymwEoCIAKENAF8quKqQMcGADwAQH4AbYIgAKAD4oCDAgAEAEYfyAjKBYwDw==&rs=AOn4CLBnk6ci1XI28qK4BQJzE8BVBX92-A',
        views: '48k views'
  ),
  Short(
    title: 'Most Expensive Things 😎😈 | Elon Musk | Success #shorts #qoutes #youtubeshorts - YouTube',
    shortImageUrl:
        'https://i.ytimg.com/vi/iB0AsznsZnk/maxresdefault.jpg',
        views: '229 views'
  ),
  Short(
    title: 'Messi\'s Career With Argentina',
    shortImageUrl:
        'https://i.ytimg.com/vi/4bZLgQEPyaU/maxres2.jpg?sqp=-oaymwEoCIAKENAF8quKqQMcGADwAQH4AbYIgAKAD4oCDAgAEAEYZSBXKEEwDw==&rs=AOn4CLCVloc-njg1T4-Az0PcoOWFZ9K8EA',
        views: '4.56M views'
  ),
];
