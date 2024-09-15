import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "BMI Calculator",
            style: TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),
          ),
          backgroundColor: const Color(0xff0d1232),
        ),
        body: const MyPage(),
      ),
    );
  }
}

class MyPage extends StatefulWidget {
  const MyPage({super.key});

  @override
  _MyPageState createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  double sliderValue = 125.0;
  bool isClick = true;
  int weight = 60;
  int age = 18;
  double bmi = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff0d1232),
      body: ListView(
        children: [
          //1st part
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Flexible(
                child: InkWell(
                  onTap: (){
                    setState(() {
                      isClick=false;
                    });
                  },
                  child: Container(
                    padding: const EdgeInsets.all(15),
                    margin: const EdgeInsets.all(15),
                    width: 160,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: isClick==true? Color(0xff252a48):Colors.cyan,
                    ),
                    child: const Column(
                      children: [
                        Icon(
                          Icons.male,
                          size: 90,
                          color: Colors.white,
                        ),
                        SizedBox(height: 5),
                        Text(
                          "Male",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              // Flexible container for female
              Flexible(
                child: InkWell(
                  onTap: (){
                    setState(() {
                      isClick=true;
                    });
                  },
                  child: Container(
                    padding: const EdgeInsets.all(15),
                    margin: const EdgeInsets.all(15),
                    width: 160,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: isClick==false? Color(0xff252a48):Colors.cyan,
                    ),
                    child: const Column(
                      children: [
                        Icon(
                          Icons.female,
                          size: 90,
                          color: Colors.white,
                        ),
                        SizedBox(height: 5),
                        Text(
                          "Female",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          //2nd part
          Container(
            padding: const EdgeInsets.all(10),
            margin: const EdgeInsets.all(25),
            height: 250,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: const Color(0xff252a48),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Height",
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
                const SizedBox(height: 10),
                 Text(
                  "${sliderValue.toInt()} cm",
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 20),
                Slider(value: sliderValue,
                    min: 100,
                    max: 300,
                    activeColor:Color(0xfff44236),
                    onChanged: (value){
                  setState(() {
                    sliderValue=value;
                  });
                    })
              ],
            ),
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              // Weight Container
              Flexible(
                child: Container(
                  padding: const EdgeInsets.all(15),
                  margin: const EdgeInsets.all(15),
                  width: 160,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: const Color(0xff252a48),
                  ),
                  child: Column(
                    children: [
                      const Text(
                        "Weight",
                        style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                       Text(
                        "$weight",
                        style: const TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          // Add weight button (circular with white icon and border)
                          Container(
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.transparent,
                            ),
                            child: IconButton(
                              onPressed: () {
                                setState(() {
                                  weight++;
                                });
                              },
                              icon: const Icon(Icons.add, color: Colors.white),
                            ),
                          ),
                          const SizedBox(width: 15),

                          Container(
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.transparent,
                            ),
                            child: IconButton(
                              onPressed: () {
                                setState(() {
                                  weight--;
                                });

                              },
                              icon: const Icon(Icons.remove, color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              // Age Container
              Flexible(
                child: Container(
                  padding: const EdgeInsets.all(15),
                  margin: const EdgeInsets.all(15),
                  width: 160,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: const Color(0xff252a48),
                  ),
                  child: Column(
                    children: [
                      const Text(
                        "Age",
                        style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 5),
                       Text(
                        "$age",
                        style:const TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [

                          Container(
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.transparent,
                            ),
                            child: IconButton(
                              onPressed: () {
                                setState(() {
                                  age++;
                                });
                              },
                              icon: const Icon(Icons.add, color: Colors.white),
                            ),
                          ),
                          const SizedBox(width: 15),

                          Container(
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.transparent,
                            ),
                            child: IconButton(
                              onPressed: () {
                                setState(() {
                                  age--;
                                });

                              },
                              icon: const Icon(Icons.remove, color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),

          // BMI Check Button
          Container(
            padding: const EdgeInsets.all(5),
            margin: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: const Color(0xfff44236),
            ),
            child: ElevatedButton(
              onPressed: () {
                setState(() {
                  bmi = weight / pow(sliderValue / 100, 2); // Calculate BMI
                });

                // Navigate to the result page and pass BMI, gender, and age
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MyPage2(
                      bmi: bmi,
                      gender: isClick ? "Female" : "Male",
                      age: age,
                    ),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(vertical: 15),
                backgroundColor: const Color(0xfff44236),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: const Text(
                "Check Your BMI",
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class MyPage2 extends StatelessWidget {
  final double bmi;
  final String gender;
  final int age;

  const MyPage2({
    super.key,
    required this.bmi,
    required this.gender,
    required this.age,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color(0xff0d1232),
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context); // Return to previous page
            },
            icon: const Icon(Icons.arrow_back_ios, color: Colors.white),
          ),
          centerTitle: true,
          title: const Text(
            "BMI RESULT",
            style: TextStyle(
                color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),
          ),
          backgroundColor: const Color(0xff0d1232),
        ),
        body: Column(


          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,


          children: [

            Center(
              child: Container(
                padding: const EdgeInsets.all(10),
                margin: const EdgeInsets.all(10),
                height: 140,
                width: 250,
                color: const Color(0xff252a48),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Gender : $gender",
                      style: const TextStyle(color: Colors.white, fontSize: 25),
                    ),
                  ],
                ),
              ),
            ),
            Center(
              child: Container(
                padding: const EdgeInsets.all(10),
                margin: const EdgeInsets.all(10),
                height: 140,
                width: 250,
                color: const Color(0xff252a48),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "BMI : ${bmi.toStringAsFixed(1)}",
                      style: const TextStyle(color: Colors.white, fontSize: 25),
                    ),
                  ],
                ),
              ),
            ),
            Center(
              child: Container(
                padding: const EdgeInsets.all(10),
                margin: const EdgeInsets.all(10),
                height: 140,
                width: 250,
                color: const Color(0xff252a48),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Age : $age",
                      style: const TextStyle(color: Colors.white, fontSize: 25),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

