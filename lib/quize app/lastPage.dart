import 'package:flutter/material.dart';

class LastPage extends StatefulWidget {
  const LastPage({super.key});

  @override
  State<LastPage> createState() => _LastPageState();
}

class _LastPageState extends State<LastPage> {
  @override
  Widget build(BuildContext context) {
    final total =
        ModalRoute.of(context)?.settings.arguments as Map<String, int>;
    return Scaffold(
      appBar: AppBar(
        title: const Text('lastPage'),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 50),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.symmetric(vertical: 20),
              margin: const EdgeInsets.only(bottom: 10),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    child: Text(
                      'Your score is : ${total['total']}',
                      style: const TextStyle(color: Colors.red, fontSize: 30),
                    ),
                  ),
                  InkWell(
                    child: const Text('Reset the game',
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.w800)),
                    onTap: () => {goTo(context)},
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void goTo(BuildContext cont) {
    Navigator.of(cont).pushReplacementNamed('/');
  }
}
