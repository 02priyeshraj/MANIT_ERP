import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:manit_erp/constants/global_variables.dart';

class loginPage extends StatelessWidget {
  const loginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: GlobalVariables.transparent,
        //resizeToAvoidBottomInset: false,
        body: Stack(
          children: [
            Container(
              height: double.infinity,
              width: double.infinity,
              decoration: const BoxDecoration(
                gradient: GlobalVariables.appGradient,
              ),
              child: const Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(top: 250.0, left: 20.0),
                  child: Column(
                    children: [
                      Text(
                        'Hi Student',
                        style: TextStyle(
                            fontSize: 35,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Sign in to continue',
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              top: 90.0,
              left: 30.0,
              child: SvgPicture.asset(
                'assets/Logo/manit.svg',
                width: 120.0,
                height: 120.0,
                fit: BoxFit.contain,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 0, top: size.height * 0.45),
              //child: SingleChildScrollView(
              //physics: const BouncingScrollPhysics(),
              child: Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40)),
                  color: Colors.white,
                ),
                height: double.infinity,
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 18.0, right: 18, top: 25.0, bottom: 0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const TextField(
                        decoration: InputDecoration(
                            suffixIcon: Icon(
                              Icons.check,
                              color: Colors.grey,
                            ),
                            label: Text(
                              'Scholar Number/User ID',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: GlobalVariables.lightBlackColor,
                              ),
                            )),
                      ),
                      const TextField(
                        decoration: InputDecoration(
                            suffixIcon: Icon(
                              Icons.visibility_off,
                              color: Colors.grey,
                            ),
                            label: Text(
                              'Password',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: GlobalVariables.lightBlackColor,
                              ),
                            )),
                      ),
                      const SizedBox(
                        height: 13,
                      ),
                      const Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Forgot Password?',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 17,
                            color: GlobalVariables.buttonColor,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 35,
                      ),
                      // Container(
                      //   height: 55,
                      //   width: 400,
                      //   decoration: const BoxDecoration(
                      //     borderRadius: BorderRadius.horizontal(
                      //         left: Radius.circular(10),
                      //         right: Radius.circular(10)),
                      //     gradient: LinearGradient(colors: [
                      //       Color(0xffB81736),
                      //       Color(0xff281537),
                      //     ]),
                      //   ),
                      //   child: const Center(
                      //     child: Text(
                      //       'LOGIN',
                      //       style: TextStyle(
                      //           fontWeight: FontWeight.bold,
                      //           fontSize: 20,
                      //           color: Colors.white),
                      //     ),
                      //   ),
                      // ),
                      // const SizedBox(
                      //   height: 10,
                      // ),
                      ElevatedButton(
                        onPressed: () => {},
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6.0),
                          ),
                          backgroundColor: GlobalVariables.buttonColor,
                          minimumSize: const Size.fromHeight((50)),
                        ),
                        child: const Text(
                          "LOGIN",
                          style: TextStyle(
                            fontFamily: 'assets/fonts/Poppins-Regular.ttf',
                            fontSize: 20.0,
                            color: GlobalVariables.backgroundColor,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Align(
                        alignment: Alignment.bottomCenter,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              "Not registered? Register",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: GlobalVariables.buttonColor),
                            ),
                            // Text(
                            //   "Sign up",
                            //   style: TextStyle(

                            //       ///done login page
                            //       fontWeight: FontWeight.bold,
                            //       fontSize: 17,
                            //       color: Colors.black),
                            // ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              //),
            ),
          ],
        ));
  }
}
