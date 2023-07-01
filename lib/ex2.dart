import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Ex extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _Ex();
}

class _Ex extends State<Ex> {
  String output = '';
  var controler = TextEditingController();
  var controler2 = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(
              height: 50,
            ),
            TextField(
              controller: controler2,
              keyboardType: TextInputType.number,
              textDirection: TextDirection.ltr,
              decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.money_outlined),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    borderSide: BorderSide(color: Colors.blue),
                  ),
                  hintText: "Enter the count value ",
                  hintStyle: TextStyle(
                    color: Colors.grey,
                  )),
            ),
            const SizedBox(
              height: 30,
            ),
            TextField(
              controller: controler,
              keyboardType: TextInputType.number,
              textDirection: TextDirection.ltr,
              decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.percent),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    borderSide: BorderSide(color: Colors.blue),
                  ),
                  hintText: "Enter your earnsByYear  ",
                  hintStyle: TextStyle(
                    color: Colors.grey,
                  )),
            ),
            const SizedBox(
              height: 50,
            ),
            ElevatedButton(
                onPressed: () => setState(() {
                      double earnsByYear = double.parse(controler.text);
                      double count = double.parse(controler2.text);
                      double temp = count;
                      int yearsToDouble;
                      for (yearsToDouble = 0;
                          temp <= 2 * count;
                          yearsToDouble++) temp *= 1 + earnsByYear;
                      output =
                          'The number of the yearsToDouble to double your account : $yearsToDouble ';
                    }),
                child:
                    const Text(style: TextStyle(color: Colors.white), 'Count')),
            const SizedBox(
              height: 50,
            ),
            Text(
              output,
              style: const TextStyle(
                  color: Colors.black, fontWeight: FontWeight.w400),
            )
          ],
        ),
      ),
    );
  }
}
