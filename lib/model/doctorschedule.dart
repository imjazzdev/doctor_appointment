import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../page/detaildoctor.dart';

class DoctorSchedule extends StatelessWidget {
  const DoctorSchedule({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          ModelComponen('Dr. Usman Yusuf', 'assets/dr-usman.png',
              'Child Specialist', '07.00-20.00'),
          ModelComponen('Dr. Austin DIstel', 'assets/dr-austin.png',
              'Parent Specialist', '12.00-14.00'),
          ModelComponen('Dr. Ashkan Forouzani', 'assets/dr-izaaz.png',
              'Psikiater', '18.00-20.00'),
        ],
      ),
    );
  }
}

class ModelComponen extends StatelessWidget {
  final String name;
  final String img;
  final String title;
  final String jamPraktek;
  ModelComponen(this.name, this.img, this.title, this.jamPraktek);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const DetailDoctor()));
      },
      child: Container(
        padding: EdgeInsets.only(bottom: 5, top: 10),
        height: 70,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              children: [
                Container(
                  height: 60,
                  width: 60,
                  child: Image.asset(img),
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(name, style: TextStyle(fontWeight: FontWeight.w900)),
                    Text(title,
                        style: TextStyle(color: Colors.grey[500], fontSize: 11))
                  ],
                ),
              ],
            ),
            SizedBox(
              width: 8,
            ),
            Text(
              jamPraktek,
              style: TextStyle(
                  color: Colors.blue[500],
                  fontSize: 11,
                  fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }
}
