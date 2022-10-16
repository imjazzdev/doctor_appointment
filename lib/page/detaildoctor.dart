import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class DetailDoctor extends StatelessWidget {
  const DetailDoctor({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[50],
        leading: Image.asset('assets/back.png'),
        title: Text(
          'Detail Doctor',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        elevation: 0,
        centerTitle: true,
        actions: [Image.asset('assets/dotmenu.png')],
      ),
      body: ListView(
        padding: EdgeInsets.all(15),
        children: [
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Image.asset('assets/dr-ashkan.png'),
                    SizedBox(width: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Dr. Ashkan Forouzani',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15),
                        ),
                        Text('Psikiater',
                            style: TextStyle(
                                color: Colors.grey[500],
                                fontWeight: FontWeight.bold))
                      ],
                    ),
                  ],
                ),
                Image.asset('assets/comment1.png')
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15, bottom: 15),
            child: Text(
              'Schedule',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Monday - Tuesday',
                ),
                Text('15.00 - 18.00',
                    style: TextStyle(
                        color: Colors.blue[300], fontWeight: FontWeight.w700))
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Thursday - Friday',
                ),
                Text('19.00 - 22.00',
                    style: TextStyle(
                        color: Colors.blue[300], fontWeight: FontWeight.w700))
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Saturday - Sunday',
                ),
                Text(
                  '19.00 - 22.00',
                  style: TextStyle(
                      color: Colors.blue[300], fontWeight: FontWeight.w700),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15, bottom: 15),
            child: Text('About Doctor',
                style: TextStyle(
                    color: Colors.black, fontWeight: FontWeight.bold)),
          ),
          Container(
              child: Text(
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
            textAlign: TextAlign.justify,
            style: TextStyle(fontSize: 12),
          )),
          Padding(
            padding: const EdgeInsets.only(top: 15, bottom: 15),
            child: Text(
              'Testimoninial',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          TestimoniComponen(
              'assets/christian.png', 'Christian Buehner', '"Good Doctor"'),
          TestimoniComponen(
              'assets/robert.png', 'Robert Godwin', '"He\'s Very Friendly"'),
          TestimoniComponen(
              'assets/vince.png', 'Vince Fleming', '"Good Job Doctor"')
        ],
      ),
      bottomNavigationBar: Container(
        alignment: Alignment.center,
        margin: EdgeInsets.only(left: 15, right: 15),
        child: Text(
          'Make An Appointment',
          style: TextStyle(color: Colors.white),
        ),
        decoration: BoxDecoration(
            color: Colors.blue[300], borderRadius: BorderRadius.circular(15)),
        height: 50,
        width: double.infinity,
      ),
    );
  }
}

class TestimoniComponen extends StatelessWidget {
  final String img;
  final String name;
  final String comment;
  TestimoniComponen(this.img, this.name, this.comment);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8),
      child: Row(
        children: [
          Container(
            child: Image.asset(
              img,
              height: 52,
              width: 52,
            ),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
            ),
          ),
          SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(comment,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.grey[500],
                      fontSize: 12))
            ],
          )
        ],
      ),
    );
  }
}
