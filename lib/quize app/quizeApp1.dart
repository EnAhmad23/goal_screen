import 'package:flutter/material.dart';
import 'package:montada/home_screen.dart';
import 'package:montada/quize%20app/lastPage.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';

class page1 extends StatefulWidget {
  const page1({super.key});

  @override
  State<page1> createState() => _page1State();
}

class _page1State extends State<page1> {
  int index = 0;

  int totalScor = 0;
  List<String> qustions = [
    'What\'s is your favoite color ?',
    'What\'s is your favorite ainmal ?',
    'What\'s is your  favorite instructor ?'
  ];
  List<List<Map<String, Object>>> answers = [
    [
      {'text': 'Black', 'score': 10},
      {'text': 'Green', 'score': 30},
      {'text': 'Blue', 'score': 40},
      {'text': 'Yellow', 'score': 20}
    ],
    [
      {'text': 'Rabbit', 'score': 40},
      {'text': 'Tiger', 'score': 30},
      {'text': 'Elephant', 'score': 10},
      {'text': 'Lion', 'score': 20}
    ],
    [
      {'text': 'Ahmad', 'score': 20},
      {'text': 'Ahmad', 'score': 10},
      {'text': 'Ahmad', 'score': 30},
      {'text': 'Ahmad', 'score': 40}
    ],
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        drawer: Drawer(
            child: ListView(children: [
          ListTile(
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: () {
              goTo(context);
            },
            title: const Text(
              'Go to last sceren ',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),
            subtitle: const Text('go 1'),
          ),
          ListTile(
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: () async {
              await canLaunchUrlString(
                      'https://pub.dev/packages/url_launcher/install')
                  ? launchUrlString(
                      'https://pub.dev/packages/url_launcher/install')
                  : throw 'sf';
            },
            title: const Text(
              'link',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),
            subtitle: const Text('go 1'),
          )
        ])),
        appBar: AppBar(
          bottom: const TabBar(tabs: [
            Tab(
              child: Icon(Icons.start_rounded),
            ),
            Tab(
              child: Icon(Icons.last_page),
            )
          ]),
          title: const Text('Quize App'),
        ),
        body: TabBarView(children: [
          Padding(
            padding: const EdgeInsets.only(top: 15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  alignment: Alignment.center,
                  margin: const EdgeInsets.only(bottom: 15, top: 15),
                  child: Text(
                    qustions[index],
                    style: const TextStyle(
                        fontSize: 25, fontWeight: FontWeight.w800),
                  ),
                ),
                ...(answers[index])
                    .map((
                      e,
                    ) =>
                        _elevatedButton(e))
                    .toList(),
              ],
            ),
          ),
          const HomeScreen()
        ]),
      ),
    );
  }

  Container _elevatedButton(Map<String, Object> text) {
    String string = '';
    int score = 0;
    string = text['text'] as String;
    score = text['score'] as int;
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: ElevatedButton(
        onPressed: (() => setState(() {
              totalScor += score;
              (index < qustions.length - 1) ? index++ : index = goTo(context);
              ;
            })),
        style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
        child: Text(
          string,
          style: const TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
        ),
      ),
    );
  }

  int goTo(BuildContext cont) {
    Navigator.of(cont)
        .pushReplacementNamed('/2', arguments: {'total': totalScor});
    return 0;
  }
}
