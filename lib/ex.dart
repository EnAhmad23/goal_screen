import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Ex1 extends StatelessWidget {
  const Ex1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
            child: Container(
          color: Color.fromARGB(255, 238, 228, 228),
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(bottom: 30),
                padding: EdgeInsets.only(top: 60, bottom: 10, left: 10),
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(30),
                        bottomRight: Radius.circular(30)),
                    color: Colors.white),
                child: Row(
                  children: [
                    const Text(
                      '18 ',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 40,
                          fontWeight: FontWeight.w800),
                    ),
                    Column(
                      children: const [
                        Text(
                          'Friday',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.w700),
                        ),
                        Text(
                          'July 2019',
                          style: TextStyle(
                              color: Colors.grey, fontWeight: FontWeight.w300),
                        )
                      ],
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                padding:
                    EdgeInsets.only(top: 20, bottom: 25, left: 10, right: 10),
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(40),
                        topLeft: Radius.circular(20),
                        bottomLeft: Radius.circular(30),
                        bottomRight: Radius.circular(30)),
                    color: Color.fromARGB(255, 62, 189, 85)),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          'In the moring ',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w800),
                        ),
                        Text(
                          'July 2019',
                          style: TextStyle(
                              color: Colors.grey, fontWeight: FontWeight.w300),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: const [
                        Icon(
                          Icons.circle_outlined,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Take medicine on time ',
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: const [
                        Icon(
                          Icons.check_circle,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Wash yeaterday\'s clothes ',
                          style: TextStyle(
                              color: Colors.white, fontFamily: 'Strikethrough'),
                        ),
                        SizedBox(
                          width: 105,
                        ),
                        Icon(
                          Icons.check_circle,
                          color: Colors.white,
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                padding:
                    EdgeInsets.only(top: 20, bottom: 25, left: 10, right: 10),
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(40),
                        topLeft: Radius.circular(20),
                        bottomLeft: Radius.circular(30),
                        bottomRight: Radius.circular(30)),
                    color: Colors.white),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          'After work ',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.w800),
                        ),
                        Text(
                          '10 May 2019',
                          style: TextStyle(
                              color: Colors.grey, fontWeight: FontWeight.w300),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: const [
                        Icon(
                          Icons.check_circle_outline,
                          color: Colors.grey,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Go to the bank ',
                          style: TextStyle(color: Colors.black),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: const [
                        Icon(
                          Icons.check_circle,
                          color: Colors.grey,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Regular in the wave release a work',
                          style: TextStyle(
                              color: Colors.black, fontFamily: 'Strikethrough'),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: const [
                        Icon(
                          Icons.check_circle_outline,
                          color: Colors.grey,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Go to the bank ',
                          style: TextStyle(color: Colors.black),
                        ),
                        SizedBox(
                          width: 190,
                        ),
                        Icon(Icons.more_vert_outlined)
                      ],
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                padding:
                    EdgeInsets.only(top: 20, bottom: 25, left: 10, right: 20),
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(40),
                        topLeft: Radius.circular(20),
                        bottomLeft: Radius.circular(30),
                        bottomRight: Radius.circular(30)),
                    color: Color.fromARGB(255, 141, 81, 253)),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          'Going to bad ',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w800),
                        ),
                        Text(
                          '10 May 2019',
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.w300),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: const [
                        Icon(
                          Icons.circle_outlined,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Call mom ',
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: const [
                        Icon(
                          Icons.check_circle,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Read  a deasige journal ',
                          style: TextStyle(
                              color: Colors.white, fontFamily: 'Strikethrough'),
                        ),
                        SizedBox(
                          width: 135,
                        ),
                        Icon(
                          Icons.more_vert_outlined,
                          color: Colors.white,
                        ),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        )),
      ),
    );
  }
}
