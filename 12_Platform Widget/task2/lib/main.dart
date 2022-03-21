import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      title: 'Flutter Demo',
      theme: CupertinoThemeData(
        barBackgroundColor: Colors.white,
        primaryColor: Colors.blue,
        scaffoldBackgroundColor: Colors.white,
      ),
      home: MainHomePage(),
    );
  }
}

class MainHomePage extends StatefulWidget {
  const MainHomePage({Key? key}) : super(key: key);

  @override
  State<MainHomePage> createState() => _MainHomePageState();
}
List<Widget> _tabs = [
    Container(),
    Container(),
    ChatsPage(),
    Container(),
  ];
}
class ChatsPage extends StatelessWidget {
  const ChatsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        child: CustomScrollView(
      slivers: [
        CupertinoSliverNavigationBar(
          backgroundColor: Colors.white,
          leading: CupertinoButton(
              child: const Text(
                'Edit',
              ),
              padding: EdgeInsets.zero,
              onPressed: () {}),
          trailing: CupertinoButton(
              child: const Icon(CupertinoIcons.square_arrow_down),
              padding: EdgeInsets.zero,
              onPressed: () {}),
          middle: const Text("Chats"),
          largeTitle: Column(
            children: [
              const Padding(
                  padding: EdgeInsets.only(right: 20),
                  child: CupertinoSearchTextField(
                    placeholder: 'Search',
                  )),
            ],
          ),
        ),
SliverList(
            delegate: SliverChildListDelegate(List.generate(10, (index) {
          return Row(
            children: [
              SizedBox(
                width: 16,
              ),
              SizedBox(
                width: 60,
                height: 60,
                child: CircleAvatar(
                  radius: 100,
                  backgroundImage: NetworkImage(
                    "https://picjumbo.com/wp-content/uploads/alone-with-his-thoughts-1080x720.jpg",
                  ),
                ),
              ),
              SizedBox(
                width: 16,
              ),
Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Panca Adnan Andrian",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 14),
                    ),
                    Text(
                      'Boss',
                      style: TextStyle(
                          fontSize: 12,
                          color: Colors.black,
                          fontWeight: FontWeight.w400),
                    ),
                    Text(
                      'Check this out',
                      style: TextStyle(
                          fontSize: 12,
                          color: Colors.grey,
                          fontWeight: FontWeight.w400),
                    ),
],
                ),
              ),
Expanded(
                child: Column(
                  children: [
                    Text(
                      '19:00',
                      style: TextStyle(color: Colors.grey, fontSize: 10),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(72),
                      ),
                      padding: EdgeInsets.all(4),
                      child: Text(
                        '352',
                        style: TextStyle(color: Colors.white, fontSize: 10),
                      ),
                    )
                  ],
                ),
              ),
],
          );
        }))),
      ],
    ));
  }
}
