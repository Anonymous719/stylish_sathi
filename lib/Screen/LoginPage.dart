import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:stylish_sathi/Constant/colors.dart';
import 'package:stylish_sathi/Constant/font.dart';

import '../Component/TextField.dart';
import '../Component/button.dart';
import 'CurvedNavigation.dart';
import 'FirstPage.dart';
import 'SecondPage.dart';

class LogIn_Page extends StatefulWidget {
  @override
  State<LogIn_Page> createState() => _LogIn_PageState();
}

class _LogIn_PageState extends State<LogIn_Page> {
  bool isSignIN = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      resizeToAvoidBottomInset: true,
      body: SafeArea(
          child: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(left: 20, top: 40, right: 20),
          child: Column(
            children: [
              Row(
                children: [
                  Text(
                    "Welcome",
                    style:
                        kPopins_600.copyWith(fontSize: 30, color: kTextColor),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Transform.rotate(
                    angle: 300,
                    child: Icon(
                      Icons.waving_hand_rounded,
                      size: 30,
                      color: kIconColor,
                    ),
                  )
                ],
              ),
              Text(
                "To the best app where you can groom yourself",
                style: kPopins_400,
              ),
              SizedBox(
                height: 40,
              ),
              Container(
                height: 70,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: kLoginBgContainerColor),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      GestureDetector(
                        onTap: () {
                          isSignIN = true;
                          setState(() {});
                        },
                        child: Container(
                          height: 50,
                          width: MediaQuery.of(context).size.width / 3,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color:
                                  isSignIN ? Colors.white : Colors.transparent),
                          child: Center(
                            child: Text(
                              "Sign UP",
                              style: kPopins_600.copyWith(
                                  fontSize: 20, color: kTextColor),
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          isSignIN = false;
                          setState(() {});
                        },
                        child: Container(
                          height: 50,
                          width: MediaQuery.of(context).size.width / 3,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color:
                                  isSignIN ? Colors.transparent : Colors.white),
                          child: Center(
                            child: Text(
                              "Log IN",
                              style: kPopins_600.copyWith(
                                  fontSize: 20, color: kTextColor),
                            ),
                          ),
                        ),
                      ),
                      // Container(
                      //     height: 50,
                      //     // width: MediaQuery.of(context).size.width % 3,
                      //     color: Colors.amber,
                      //     child: Text('hfxfhcgvhcvb')),
                    ]),
              ),
              isSignIN ? ifSigin() : ifLogin(),
            ],
          ),
        ),
      )),
    );
  }
}

class ifSigin extends StatefulWidget {
  @override
  State<ifSigin> createState() => _ifSiginState();
}

class _ifSiginState extends State<ifSigin> {
  final _Name = TextEditingController();
  final _Email = TextEditingController();
  final _PhoneNumber = TextEditingController();
  final _Password = TextEditingController();
  final _Confirmpassword = TextEditingController();

  String Name = "";
  String Email = "";
  String PhoneNumber = "";
  String Password = "";
  String Confirmpassword = "";
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        generalbox(
          label: "Name",
          keyboardtype: TextInputType.name,
          controller: _Name,
        ),
        generalbox(
          label: "Email",
          keyboardtype: TextInputType.emailAddress,
          controller: _Email,
        ),
        generalbox(
          label: "Phone Number",
          keyboardtype: TextInputType.phone,
          controller: _PhoneNumber,
        ),
        passwordbox(
          Text: "Password",
          controller: _Password,
        ),
        passwordbox(
          controller: _Confirmpassword,
          Text: "Confirm Password",
        ),
        Padding(
          padding: EdgeInsets.only(top: 30.0),
          child: Button(
              Textt: "Sign UP",
              OnTap: () {
                Name = _Name.text;
                Email = _Email.text;
                PhoneNumber = _PhoneNumber.text;
                Password = _Password.text;
                Confirmpassword = _Confirmpassword.text;
                print("name" + Name);
                print("Email" + Email);
                print("Phone" + PhoneNumber);
                print("pass" + Password);
                print("cpass" + Confirmpassword);
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (builder) => CurvedNavigationPage()));
              }),
        )
      ],
    );
  }
}

class ifLogin extends StatelessWidget {
  final _Email = TextEditingController();
  final _PhoneNumber = TextEditingController();
  final _Password = TextEditingController();
  final _Confirmpassword = TextEditingController();

  String Email = "";
  String PhoneNumber = "";
  String Password = "";
  String Confirmpassword = "";

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        generalbox(
          label: "Email",
          keyboardtype: TextInputType.emailAddress,
          controller: _Email,
        ),

        passwordbox(
          Text: "Password",
          controller: _Password,
        ),
        passwordbox(
          controller: _Confirmpassword,
          Text: "Confirm Password",
        ),
        Padding(
          padding: EdgeInsets.only(top: 30.0),
          child: Button(
              Textt: "Log IN",
              OnTap: () {
                Email = _Email.text;
                PhoneNumber = _PhoneNumber.text;
                Password = _Password.text;
                Confirmpassword = _Confirmpassword.text;

                print("Email" + Email);
                print("Phone" + PhoneNumber);
                print("pass" + Password);
                print("cpass" + Confirmpassword);
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (builder) => CurvedNavigationPage()));
              }),
        ),
        // Padding(
        //   padding: EdgeInsets.only(top: 30.0),
        //   child: Button(
        //       Textt: "Log In",
        //       OnTap: () {
        //         Navigator.push(context,
        //             MaterialPageRoute(builder: (builder) => homepage()));
        //       }),
        // )
      ],
    );
  }
}
