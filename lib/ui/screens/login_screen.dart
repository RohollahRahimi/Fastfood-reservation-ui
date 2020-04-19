import 'package:flutter/material.dart';
import 'package:testt/ui/screens/category_screen.dart';
import 'package:testt/ui/screens/incompelete_screen.dart';
import 'package:testt/ui/shared/ui_helper.dart';
import 'package:testt/ui/widgets/orangeButton.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/b55.jpg"),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(0.5), BlendMode.colorBurn)),
        ),
        child: Scaffold(
            backgroundColor: Colors.transparent,
            bottomNavigationBar: Container(
              color: Colors.black,
              height: 50,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text("don't you have an account?"),
                  UIhelper.horizontalSpaceVsmall,
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) {
                        return IncompeleteScreen();
                      }));
                    },
                    child: Text('SIGN UP',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                  )
                ],
              ),
            ),
            body: Column(children: <Widget>[
              Container(
                child: Column(
                  children: <Widget>[
                    UIhelper.verdicalSpaceLarge,
                    Image.asset(
                      "assets/images/chef.png",
                      height: 120,
                    ),
                    Text('Sahel Food',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                            fontFamily: 'Georgia')),
                    UIhelper.verdicalSpaceMedium,
                  ],
                ),
              ),
              Expanded(
                child: SingleChildScrollView(
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: <Widget>[
                      Container(
                        margin: const EdgeInsets.all(30),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            UIhelper.verdicalSpaceLarge,
                            Text(
                              '  Login',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 25,
                                  fontFamily: 'Georgia'),
                            ),
                            UIhelper.verdicalSpaceMedium,
                            TextFormField(
                              decoration: InputDecoration(
                                hintText: 'Username or Email',
                                prefixIcon: Icon(Icons.person),
                              ),
                            ),
                            UIhelper.verdicalSpaceMedium,
                            TextFormField(
                              obscureText: true,
                              decoration: InputDecoration(
                                hintText: 'Password',
                                prefixIcon: Icon(Icons.lock_outline),
                              ),
                            ),
                            UIhelper.verdicalSpaceLarge,
                            OrangeButton(
                              title: 'LOGIN',
                              onTap: () {
                                Navigator.of(context)
                                    .push(MaterialPageRoute(builder: (context) {
                                  return CategoryScreen();
                                }));
                              },
                            ),
                          ],
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: (context) {
                            return IncompeleteScreen();
                          }));
                        },
                        child: Text('Forgot Password?  '),
                      ),
                    ])),
              ),
            ])));
  }
}
