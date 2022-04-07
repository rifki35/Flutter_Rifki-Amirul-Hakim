import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Telegram'),
          centerTitle: false,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: List.generate(
              Name.length,
              (index) => Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 8,
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 55,
                      width: 55,
                      child: CircleAvatar(
                        backgroundImage: NetworkImage(photos[0]),
                      ),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          Container(
                            height: 55,
                            child: Row(
                              children: [
                                Expanded(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        Name[0],
                                        style: TextStyle(
                                          fontSize: 16,
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 8,
                                      ),
                                      Text(
                                        subtitles[0],
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.grey,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      clock[0],
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: Colors.grey,
                                      ),
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(100),
                                          color: Colors.green),
                                      padding: EdgeInsets.all(4),
                                      width: 25,
                                      height: 25,
                                      alignment: Alignment.center,
                                      child: Text(
                                        '0',
                                        style: TextStyle(
                                          color: Colors.white,
                                        ),
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                          Divider(),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}

final Name = [
  "Aprilia",
  "Bagus",
  "Indra",
  'Maria',
  'Hari',
  'Cantika',
  'Dewa',
  'Andira',
  'Berniqa',
  'Harya'
];

final subtitles = [
  "Photo",
  "You have my support<3",
  "Update?",
  "Hi",
  'Hello, what are you doing?',
  'Beautyfull',
  'Photo',
  'waana go tonight?',
  'What your name?',
  'Where are you from?'
];
final clock = [
  '10:10',
  '09:10',
  '07:10',
  '05:10',
  '05:16',
  '05:16',
  '05:16',
  '05:16',
  '03:16',
  '01:16',
];
final photos = [
  'https://pbs.twimg.com/media/EwbP3lwXEAABZOF.jpg',
  'http://asset-a.grid.id/crop/0x0:0x0/x/photo/2018/10/22/3719332251.jpg',
  'https://data.whicdn.com/images/254006393/original.jpg',
  'https://i.pinimg.com/236x/39/fd/a5/39fda5781e5c77054251bfb5a25d451b.jpg',
  'https://i.pinimg.com/236x/dd/ff/7a/ddff7af3424636a8fd8703ca7ce67166.jpg',
  'https://i.pinimg.com/236x/c8/9a/a2/c89aa23f07b1464d3849db92ae73946f.jpg',
  'https://i.pinimg.com/236x/48/87/59/4887599b2d4bd8b1a14530ea231b299e.jpg',
  'https://i.pinimg.com/236x/ee/f3/ba/eef3bac54d574bf3c319d4dad06d6432.jpg',
  'https://i.pinimg.com/236x/b4/e0/df/b4e0df6eb27dab7bc3c77260ae96a0d2.jpg',
  'https://i.pinimg.com/236x/ca/7e/4f/ca7e4fc56b787bf9a6de53569bebc951.jpg'
];