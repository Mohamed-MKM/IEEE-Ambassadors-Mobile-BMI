import 'package:flutter/material.dart';

void main() {
  runApp(const MyPage2());
}

class MyPage2 extends StatefulWidget {
  const MyPage2({super.key, required double bmi});

  @override
  State<MyPage2> createState() => _MyPage2State();
}

class _MyPage2State extends State<MyPage2> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(

          leading: IconButton(onPressed: (){},
            icon: Icon(Icons.arrow_back_ios,color: Colors.white,),),

          centerTitle: true,
          title: const Text(
            "BMI RESULT",
            style: TextStyle(
                color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),
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
  @override
  Widget build(BuildContext context) {

    return Scaffold(
    backgroundColor: Color(0xff0d1232),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Container(
              padding: const EdgeInsets.all(10),
              margin: const EdgeInsets.all(10),
              height: 140,
              width:250,
              color: const Color(0xff252a48),
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  Text(
                    "Gender : Male",
                    style: TextStyle(color: Colors.white, fontSize: 25,),
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
              width:250,
              color: const Color(0xff252a48),
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  Text(
                    "Result : 26",
                    style: TextStyle(color: Colors.white, fontSize: 25,),
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
              width:250,
              color: const Color(0xff252a48),
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  Text(
                    "Age : 22",
                    style: TextStyle(color: Colors.white, fontSize: 25,),
                  ),
                ],
              ),
            ),

          ),
        ],


      ),
    );
  }

}