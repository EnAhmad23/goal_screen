import 'package:flutter/material.dart';

class Main extends StatefulWidget {
  const Main({super.key});
  @override
  State<StatefulWidget> createState() => _Main();
}

String s = "";
void main() {
  runApp(const Main());
}

class _Main extends State<Main> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: ElevatedButton(
              onPressed: () {
                const alert = AlertDialog(
                  content: Text("ckflgjlb"),
                );
                showDialog(
                  context: context,
                  builder: (BuildContext ctx) {
                    return alert;
                  },
                );
              },
              child: Text('press')),
        ),
      ),
    );
  }

  CustomScrollView customAppBar() {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          actions: [
            Row(
              children: [
                IconButton(
                    onPressed: () {}, icon: const Icon(Icons.account_circle)),
                IconButton(
                    onPressed: () {}, icon: const Icon(Icons.account_circle))
              ],
            )
          ],
          leading: Padding(
            padding: const EdgeInsets.only(left: 1),
            child: Row(
              children: [
                IconButton(
                    onPressed: () {}, icon: const Icon(Icons.account_circle)),
                Expanded(
                    child: IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.account_circle)))
              ],
            ),
          ),
          flexibleSpace: Container(
            decoration: const BoxDecoration(
                gradient: LinearGradient(colors: [Colors.blue, Colors.black])),
          ),
          title: const Text('hh'),
          centerTitle: true,
        ),
        SliverList(delegate: SliverChildListDelegate([Text('data')]))
      ],
    );
  }
}
