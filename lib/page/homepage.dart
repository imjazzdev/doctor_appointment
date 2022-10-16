import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../model/doctorschedule.dart';
import '../model/listcatagory.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(children: [
          ListView(
            padding: EdgeInsets.all(15),
            children: [
              Container(
                margin: EdgeInsets.only(bottom: 20),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            height: 50,
                            width: 50,
                            child: Image.asset('assets/profile.png'),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                            ),
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Welcome',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey[500]),
                              ),
                              Text(
                                'Raka Farras Syafiq',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.blue[300]),
                              )
                            ],
                          ),
                        ],
                      ),
                      Image.asset(
                        'assets/notification.png',
                        height: 30,
                        width: 30,
                      )
                    ]),
              ),
              Container(
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.only(bottom: 20),
                width: double.infinity,
                height: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Color.fromARGB(255, 225, 255, 238)),
                child: Row(
                  children: [
                    Image.asset(
                      'assets/search.png',
                      height: 25,
                      width: 25,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Search doctor specialist',
                      style: TextStyle(color: Colors.grey[400], fontSize: 12),
                    )
                  ],
                ),
              ),
              ListCatagory(),
              Container(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: double.infinity,
                        child: Image.asset('assets/banner.png'),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text('Recognize Some Of The Symptoms',
                          style: TextStyle(fontWeight: FontWeight.w700)),
                      Text('Of Heart Disease',
                          style: TextStyle(fontWeight: FontWeight.w700)),
                      Text('12 January 2022',
                          style: TextStyle(
                              color: Colors.grey[500],
                              fontSize: 12,
                              fontWeight: FontWeight.bold))
                    ]),
              ),
              SizedBox(height: 18),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Doctor's Schedule",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                  Text(
                    'See All',
                    style: TextStyle(
                        color: Colors.blue[100], fontWeight: FontWeight.bold),
                  )
                ],
              ),
              DoctorSchedule(),
            ],
          ),
        ]),
      ),
      bottomNavigationBar: Container(
        margin: EdgeInsets.only(left: 10, right: 10),
        height: 70,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Image.asset('assets/home.png'),
            Image.asset('assets/calender.png'),
            Image.asset('assets/comment.png'),
            Image.asset('assets/setting.png'),
          ],
        ),
        decoration: BoxDecoration(
            color: Colors.blue[200], borderRadius: BorderRadius.circular(18)),
      ),
    );
  }
}
