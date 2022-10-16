import 'package:doctor_appointment/page/homepage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class StartPage extends StatelessWidget {
  const StartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                    'assets/image 81.png',
                  ),
                  fit: BoxFit.cover)),
        ),
        Positioned(
          bottom: 20,
          left: 10,
          right: 10,
          child: Container(
            padding: EdgeInsets.all(20),
            margin: EdgeInsets.all(15),
            height: 250,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(25)),
            child: Column(
              children: [
                Text(
                  'We Are Ready To Help \n You No Matter What',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
                Text('we eill help you without \n spending a penny',
                    textAlign: TextAlign.center),
                SizedBox(
                  height: 30,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => HomePage()));
                  },
                  child: Container(
                    height: 63,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.blue[200]),
                    alignment: Alignment.center,
                    child: Text(
                      'Get Started',
                      style: TextStyle(color: Colors.grey[50]),
                    ),
                  ),
                )
              ],
            ),
          ),
        )
      ],
    ));
  }
}
