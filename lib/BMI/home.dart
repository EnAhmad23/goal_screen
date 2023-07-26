import 'package:flutter/material.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  Color gr = Colors.blueGrey;
  bool isMale = true;
  Color green = Colors.teal;
  Color white = Colors.white;
  Color black = Colors.black;
  double higth = 150;
  TextStyle? style;
  int age = 20;
  int weigth = 50;
  @override
  Widget build(BuildContext context) {
    Color color = gr;
    style = TextStyle(color: black, fontSize: 20, fontWeight: FontWeight.bold);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          iconTheme: IconThemeData(size: 90, color: white),
          primaryColor: green,
          appBarTheme: AppBarTheme(backgroundColor: green)),
      home: Scaffold(
          appBar: AppBar(
            title: const Text('BMI'),
            centerTitle: true,
          ),
          body: Container(
            color: Colors.black,
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [box('male'), box('female')],
                ),
                Container(
                  padding: const EdgeInsets.all(10),
                  margin:
                      const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
                  decoration: BoxDecoration(
                      color: gr, borderRadius: BorderRadius.circular(10)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(
                        height: 30,
                      ),
                      Text(
                        'Higth',
                        style: style,
                      ),
                      Text(
                        '${higth.toStringAsFixed(1)} cm',
                        style: style,
                      ),
                      Slider(
                        activeColor: green,
                        inactiveColor: black,
                        min: 100,
                        max: 250,
                        value: higth,
                        onChanged: (value) {
                          setState(() {
                            higth = value;
                          });
                        },
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Row(
                    children: [
                      boxx(style, 'Weigth'),
                      const SizedBox(
                        width: 20,
                      ),
                      boxx(style, 'Age'),
                    ],
                  ),
                ),
              ],
            ),
          )),
    );
  }

  Container boxx(TextStyle? style, String text) {
    return Container(
      // margin: EdgeInsets.only(right: 15),
      decoration:
          BoxDecoration(color: gr, borderRadius: BorderRadius.circular(10)),
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
      child: Column(children: [
        Text(
          text,
          style: style,
        ),
        const SizedBox(
          height: 15,
        ),
        Text(
          (text == 'Age') ? '$age' : '$weigth',
          style: TextStyle(color: white, fontSize: 30),
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            FloatingActionButton(
              heroTag: text == 'Weigth' ? 'weigth--' : 'age--',
              backgroundColor: green,
              onPressed: () =>
                  setState(() => text == 'Weigth' ? weigth-- : age--),
              child: const Icon(Icons.remove),
            ),
            const SizedBox(
              width: 20,
            ),
            FloatingActionButton(
              heroTag: text == 'Weigth' ? 'weigth++' : 'age++',
              backgroundColor: green,
              onPressed: () => setState(() {
                text == 'Weigth' ? weigth++ : age++;
                print('1');
              }),
              child: const Icon(Icons.add),
            ),
          ],
        )
      ]),
    );
  }

  GestureDetector box(String type) {
    return GestureDetector(
      onTap: () => setState(() => isMale = (type == 'male') ? true : false),
      child: Container(
        // margin: EdgeInsets.only(right: 15),
        decoration: BoxDecoration(
            color: (isMale && type == 'male') || (!isMale && type == 'female')
                ? green
                : gr,
            borderRadius: BorderRadius.circular(10)),
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
        child: Column(children: [
          Icon(
            (type == 'male') ? Icons.male : Icons.female,
          ),
          const SizedBox(
            height: 30,
          ),
          Text(
            type,
            style: style,
          )
        ]),
      ),
    );
  }
}
