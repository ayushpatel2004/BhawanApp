import 'package:flutter/material.dart';
import 'package:bhawan_app/screens/homePage.dart';
import 'package:provider/provider.dart';

import '../models/user_auth.dart';

class ProfilePage extends StatelessWidget {
  ProfilePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {

    final userData = Provider.of<UserDataGlobal>(context);
    Size size = MediaQuery.of(context).size;
    return Container(
        child: Scaffold(
          appBar: AppBar(
            elevation: 0,
            backgroundColor: Colors.purple,
            leading: Builder(
              builder: (BuildContext context) {
                return IconButton(
                  icon: const Icon(Icons.arrow_back),
                  onPressed: () { Navigator.of(context).pop(ProfilePage());
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=> HomePage()));
                  },
                );
              },
            ),
          ),
          body:
          SingleChildScrollView(
            child: Container(
              color: Colors.purple,
              width: size.width *1,
              height: size.height *.894,
              child: Column(
                children: [
                  Column(
                    children: [
                      Container(
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.purple, width: 1.5),
                              shape: BoxShape.circle,
                              image: DecorationImage(image: AssetImage("images/default.jpg"))
                          ), height: size.height* .2
                      ),
                      SizedBox(height: 25),
                      SingleChildScrollView(
                        child: Container(
                            padding: EdgeInsets.fromLTRB(15, 10 , 15, 0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CardField(
                                    size,
                                    Colors.purple,
                                    Icon(Icons.person, color: Colors.white),
                                    userData.name,
                                    'Name'),
                                CardField(
                                    size,
                                    Colors.purple,
                                    Icon(Icons.mail, color: Colors.white),
                                    userData.email,
                                    'E-mail'),
                                CardField(
                                    size,
                                    Colors.purple,
                                    Icon(Icons.assignment_ind, color: Colors.white),
                                    userData.enrollment_number,
                                    'Enrollment Number'),
                                CardField(
                                    size,
                                    Colors.purple,
                                    Icon(Icons.other_houses, color: Colors.white),
                                    userData.bhawan,
                                    'Bhawan'),
                                CardField(
                                    size,
                                    Colors.purple,
                                    Icon(Icons.local_hotel, color: Colors.white),
                                    userData.room_number,
                                    'Room Number'),
                                CardField(
                                    size,
                                    Colors.purple,
                                    Icon(Icons.info, color: Colors.white),
                                    userData.branch,
                                    'Branch'),
                              ],
                            ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        )
    );
  }
}
CardField(
    Size size,
    Color color,
    Icon icon,
    String title,
    String subtitle,
    ) {
  return Padding(
    padding: const EdgeInsets.all(2),
    child: Card(
        child: SizedBox(
            height: size.height * .09,
            width: size.width * .9,
            child: Center(
              child: ListTile(
                leading: CircleAvatar(
                  backgroundColor: color,
                  child: icon,
                ),
                title: Text(
                  title,
                  style: const TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 14),
                ),
                subtitle: Text(
                  subtitle,
                  style: const TextStyle(
                      color: Colors.blueGrey,
                      fontWeight: FontWeight.bold,
                      fontSize: 11.5),
                ),
              ),
            ))),
  );
}
