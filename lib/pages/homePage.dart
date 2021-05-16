import 'package:flutter/material.dart';
import 'package:music_web_ui/components/categories.dart';
import 'package:music_web_ui/global.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool playing = false;
  double myValue = 4.02;
  List<Map<String, String>> playlist = [
    {
      'title': 'The Beatles - Blackbird',
      'artist': 'Paul McCartney',
      'time': '3:40',
    },
    {
      'title': 'Past Life',
      'artist': 'Trevor Daniel, Selena Gomez',
      'time': '03:06',
    },
    {
      'title': 'Trust Nobody',
      'artist': 'Dj Snake',
      'time': '03.30',
    },
    {
      'title': 'The Cure - Friday I Love',
      'artist': 'Ed Heartfelt',
      'time': '04.30',
    },
    {
      'title': 'Thinking out Loud',
      'artist': 'Morrissey',
      'time': '04.37',
    },
    {
      'title': 'How Soon is Now',
      'artist': 'The Smiths',
      'time': '05.30',
    },
    {
      'title': 'Heart of Gold',
      'artist': 'Neil Young',
      'time': '03.01',
    },
    {
      'title': 'City of Gold',
      'artist': 'U2',
      'time': '03.56',
    },
    {
      'title': 'Breath you Take',
      'artist': 'The Police',
      'time': '03.39',
    },
    {
      'title': 'Tambourine Man',
      'artist': 'Bob Dylan',
      'time': '04.30',
    },
    {
      'title': 'Our House',
      'artist': 'Madness',
      'time': '03.32',
    },
    {
      'title': 'Everyone Knows',
      'artist': 'Leonard Cohen',
      'time': '03.30',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kLightPurpleColor,
      body: Row(
        children: [
          Categories(),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 10,
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: 'Search for artists, tracks, podcasts...',
                            prefixIcon: Icon(
                              Icons.search,
                            ),
                          ),
                        ),
                      ),
                      Spacer(),
                      Text(
                        'STATS',
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'PRO PLANS',
                        style: TextStyle(
                          color: kGreenColor,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 10,
                  ),
                  child: Text(
                    'RECOMMENDED',
                  ),
                ),
                Container(
                  height: 200,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Card(
                        child: Container(
                          width: 400,
                          child: Image.asset(
                            'images/1.jpg',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Card(
                        child: Container(
                          width: 400,
                          child: Image.asset(
                            'images/2.jpg',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Card(
                        child: Container(
                          width: 400,
                          child: Image.asset(
                            'images/3.jpg',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Card(
                        child: Container(
                          width: 400,
                          child: Image.asset(
                            'images/4.jpg',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Card(
                        child: Container(
                          width: 400,
                          child: Image.asset(
                            'images/5.jpg',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    children: [
                      Expanded(
                        child: Column(
                          children: [
                            ListTile(
                              leading: Container(
                                height: 70,
                                width: 60,
                                decoration: BoxDecoration(
                                  color: kWhiteColor,
                                  borderRadius: BorderRadius.circular(10),
                                  image: DecorationImage(
                                    image: AssetImage(
                                      'images/title.png',
                                    ),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              title: Text(
                                'My Playlist',
                              ),
                              subtitle: Text(
                                'Created By User',
                              ),
                              trailing: Icon(
                                Icons.play_circle_filled,
                                color: kGreenColor,
                                size: 40,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                horizontal: 20,
                                vertical: 10,
                              ),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Expanded(
                                        flex: 2,
                                        child: Text(
                                          'TITLE',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        flex: 2,
                                        child: Text(
                                          'ARTISTS',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: Text(
                                          'TIME',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Container(
                                    height: 200,
                                    child: ListView.builder(
                                      itemCount: playlist.length,
                                      shrinkWrap: true,
                                      itemBuilder: (_, i) {
                                        return Padding(
                                          padding: EdgeInsets.symmetric(
                                            vertical: 10,
                                          ),
                                          child: Row(
                                            children: [
                                              Expanded(
                                                flex: 2,
                                                child: (i == 0)
                                                    ? SingleChildScrollView(
                                                        scrollDirection:
                                                            Axis.horizontal,
                                                        child: Row(
                                                          children: [
                                                            Icon(
                                                              Icons
                                                                  .play_circle_filled,
                                                              color:
                                                                  kGreenColor,
                                                            ),
                                                            SizedBox(
                                                              width: 10,
                                                            ),
                                                            Text(
                                                              playlist[i]
                                                                  ['title'],
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                            ),
                                                          ],
                                                        ),
                                                      )
                                                    : Text(
                                                        playlist[i]['title'],
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                      ),
                                              ),
                                              Expanded(
                                                flex: 2,
                                                child: Text(
                                                  playlist[i]['artist'],
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                ),
                                              ),
                                              Expanded(
                                                child: Text(
                                                  playlist[i]['time'],
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  style: TextStyle(
                                                    color: (i == 0)
                                                        ? kGreenColor
                                                        : Colors.white,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          children: [
                            ListTile(
                              title: Text(
                                'Trending Artist',
                              ),
                              subtitle: Text(
                                'Imagine Dragons',
                              ),
                            ),
                            Expanded(
                              child: ListView.builder(
                                scrollDirection: Axis.horizontal,
                                itemCount: 5,
                                itemBuilder: (_, i) {
                                  return Container(
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 10,
                                      vertical: 20,
                                    ),
                                    width: 200,
                                    child: GridTile(
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.vertical(
                                          top: Radius.circular(10),
                                        ),
                                        child: Image.asset(
                                          'images/${i + 1}.jpg',
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      footer: ListTile(
                                        title: Text(
                                          'Images ${i + 1}',
                                          style: TextStyle(
                                            color: Colors.black,
                                          ),
                                        ),
                                        subtitle: Text(
                                          'Images ${i + 1} Artist',
                                          style: TextStyle(
                                            color: Colors.purpleAccent,
                                          ),
                                        ),
                                      ),
                                    ),
                                  );
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: PlayerBar(
        playing: playing,
        myValue: myValue,
        onPressed: (val) {
          setState(() {
            myValue = val;
          });
        },
      ),
    );
  }
}

class PlayerBar extends StatelessWidget {
  const PlayerBar({
    Key key,
    @required this.playing,
    @required this.myValue,
    this.onPressed,
  }) : super(key: key);

  final bool playing;
  final double myValue;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 100,
        vertical: 20,
      ),
      decoration: BoxDecoration(
        color: kLightPurpleColor,
        border: Border(
          top: BorderSide(
            color: Colors.black,
          ),
        ),
      ),
      height: 100,
      child: Row(
        children: [
          CircleAvatar(
            backgroundColor: kPurpleColor,
            radius: 20,
            backgroundImage: AssetImage(
              'images/title.png',
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Icon(
            Icons.fast_rewind,
          ),
          (playing)
              ? Icon(
                  Icons.pause,
                )
              : Icon(
                  Icons.play_arrow,
                ),
          Icon(
            Icons.fast_forward,
          ),
          SizedBox(
            width: 20,
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'The Beatles - BlackBird',
                ),
                SliderTheme(
                  data: SliderThemeData(
                    activeTickMarkColor: kWhiteColor,
                    activeTrackColor: kGreenColor,
                    inactiveTrackColor: kGreenColor.withOpacity(0.3),
                    thumbColor: kGreenColor,
                    trackHeight: 2,
                    thumbShape: RoundSliderThumbShape(
                      enabledThumbRadius: 3.0,
                    ),
                    overlayColor: Colors.white,
                    overlayShape: RoundSliderOverlayShape(
                      overlayRadius: 8.0,
                    ),
                  ),
                  child: Slider(
                    min: 0,
                    max: 5,
                    value: myValue,
                    onChanged: onPressed,
                  ),
                ),
                Row(
                  children: [
                    Text(
                      myValue.toString(),
                      style: kListTileTextStyle,
                    ),
                    Spacer(),
                    Text(
                      '5.00',
                      style: kListTileTextStyle,
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Icon(
            Icons.shuffle,
          ),
          SizedBox(
            width: 10,
          ),
          Icon(
            Icons.repeat,
          ),
          SizedBox(
            width: 10,
          ),
          Icon(
            Icons.volume_up,
          ),
          SizedBox(
            width: 20,
          ),
        ],
      ),
    );
  }
}
