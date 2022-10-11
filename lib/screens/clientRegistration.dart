import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import '/utils/constants.dart';
import '../utils/button.dart';
import '../main.dart';
import 'otp.dart';
import 'package:dropdown_button2/dropdown_button2.dart';

var bhawan = ['Rajiv Bhawan', 'Rajendra Bhawan', 'Cautley Bhawan', 'Kasturba Bhawan', 'Jawhar Bhawan', 'Ravindra Bhawan', 'Sarojani Bhawan', 'Govind Bhawan', 'Ganga Bhawan', 'RadhaKrishn Bhawan', 'VigyanKunj'];

void main1() => runApp(RegistrationPage());

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({Key? key}) : super(key: key);

  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  String bhawan_selected = bhawan.first;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: kPrimaryColor,
      ),
      home: Scaffold(
        // resizeToAvoidBottomInset : false,
        backgroundColor: kBackgroundColor,
        appBar: AppBar(
          title: Text(
            'Registration Page',
          ),
          centerTitle: true,
          backgroundColor: kPrimaryColor,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SingleChildScrollView(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          child: Container(
                            width: 120,
                            height: 120,
                            child: Image(
                              image: AssetImage('images/logo.jpg'),
                            ),
                          ),
                        ),
                        Container(
                          child: Text(
                            'Bhawan App',
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color: kPrimaryColor,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      child: Text('Create a new account'),
                    ),
                    Column(
                      children: [
                        Container(
                          padding: EdgeInsets.all(15.0),
                          child: TextField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              labelText: 'Username',
                              hintText: 'Enter your username here',
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(15.0),
                          child: TextField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              labelText: 'Email-Id',
                              hintText: 'Enter your Institute email-id here',
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(15.0),
                          child: TextField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              labelText: 'Enrollment Number',
                              hintText: 'Enter your enrollment number here',
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(13.0),
                          // width: 345,
                          // height: 62,
                          decoration: ShapeDecoration(
                            shape: RoundedRectangleBorder(
                              side: BorderSide(
                                width: 1.0,
                                style: BorderStyle.solid,
                              ),
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                            ),
                          ),
                          // child: DropdownButtonHideUnderline(
                          //   child: DropdownButton2(
                          //     hint: Text(
                          //       'Select Item',
                          //       style: TextStyle(
                          //         fontSize: 16,
                          //         color: Theme.of(context).hintColor,
                          //       ),
                          //     ),
                          //     items: items
                          //         .map((item) => DropdownMenuItem<String>(
                          //       value: item,
                          //       child: Text(
                          //         item,
                          //         style: const TextStyle(
                          //           fontSize: 14,
                          //         ),
                          //       ),
                          //     ))
                          //         .toList(),
                          //     value: selectedValue,
                          //     onChanged: (value) {
                          //       setState(() {
                          //         selectedValue = value as String;
                          //       });
                          //     },
                          //     buttonHeight: 40,
                          //     buttonWidth: 350,
                          //     itemHeight: 40,
                          //   ),
                          // ),
                          child: DropdownButtonHideUnderline(
                            child: DropdownButton2(
                              hint: Text(
                                'Select Bhawan',
                              ),
                            // items: bhawan.map(String selected_bhawan) => DropdownMenuItem<String>(
                            //     value: selected_bhawan,
                            //   child: Text(
                            //     selected_bhawan,
                            //   )
                            // )
                            // .tolist(),
                            value: bhawan_selected,
                              icon: Icon(Icons.keyboard_arrow_down),
                              items: bhawan.map((String selected_bhawan){
                                return DropdownMenuItem(
                                  value: selected_bhawan,
                                  child: Text(selected_bhawan),
                                );
                              }).toList(),
                              onChanged: (String? selected){
                                setState(() {
                                  bhawan_selected = selected!;
                                });
                              }
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(15.0),
                          child: TextField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              labelText: 'Room Number',
                              hintText: 'Enter your bhawan room number here',
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(15.0),
                          child: TextField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              labelText: 'Password',
                              hintText: 'Enter password here',
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.all(0),
                          child: Button(
                            'Register',
                              main2,
                          ),
                          // child: Row(
                          //   mainAxisAlignment: MainAxisAlignment.center,
                          //   children: [
                          //     Container(
                          //       padding: EdgeInsets.all(15.0),
                          //       child: Container(
                          //         width: 150,
                          //         child: Button(
                          //           'Sign Up',
                          //           main2,
                          //         ),
                          //       ),
                          //     ),
                          //     Container(
                          //       padding: EdgeInsets.all(15.0),
                          //       child: Container(
                          //         width: 150,
                          //         child: Button(
                          //           'Log In',
                          //               () {},
                          //         ),
                          //       ),
                          //     ),
                          //   ],
                          // ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ]
          ),
        ),
      ),
    );
  }
}