import 'package:flutter/material.dart';

class page extends StatelessWidget {
  const page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            print('object');
          },
          child: Icon(Icons.add)),
      backgroundColor: const Color.fromARGB(255, 248, 239, 239),
      body: SafeArea(
          child: ListView(
        children: [
          Container(
            decoration: const BoxDecoration(
                color: Color.fromARGB(255, 85, 85, 222),
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(15),
                    bottomRight: Radius.circular(15))),
            child: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(children: [
                SizedBox(
                  width: 125,
                ),
                Text(
                  'Weight Tracker',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                SizedBox(
                  width: 110,
                ),
                Icon(
                  Icons.settings,
                  color: Colors.white,
                )
              ]),
            ),
          ),
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            margin: const EdgeInsets.all(15),
            elevation: 2.0,
            color: Colors.white,
            child: Container(
                padding: const EdgeInsets.all(5),
                child: const Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            children: [
                              Text(
                                'Current',
                                style: TextStyle(fontSize: 15),
                              ),
                              Text(
                                '89.0kg',
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              Text(
                                'Change',
                                style: TextStyle(fontSize: 15),
                              ),
                              Text(
                                '1.0kg',
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.bold),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            children: [
                              Text(
                                'Weekly',
                                style: TextStyle(fontSize: 15),
                              ),
                              Text(
                                '1.0kg',
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              Text(
                                'Weekly',
                                style: TextStyle(fontSize: 15),
                              ),
                              Text(
                                '1.0kg',
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.bold),
                              )
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                )),
          ),
          Container(
            height: 500,
            color: Colors.white,
            margin: const EdgeInsets.only(top: 10),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              child: Column(
                children: [
                  myRow(wiegth: 89.0, date: 'April 4,2023'),
                  myRow(wiegth: 88.0, date: 'April ')
                ],
              ),
            ),
          )
        ],
      )),
    );
  }
}

Row myRow({required double wiegth, required String date}) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      Column(
        children: [
          const Icon(
            Icons.wallet,
            color: Colors.grey,
          ),
          SizedBox(
            height: 25,
          )
        ],
      ),
      const SizedBox(
        width: 20,
      ),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "${wiegth}.kg",
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Text(
            date,
            style: const TextStyle(fontSize: 18),
          ),
          const SizedBox(
            height: 25,
          ),
        ],
      ),
    ],
  );
}
