import 'package:flutter/material.dart';
import 'package:manit_erp/constants/global_variables.dart';

// import 'package:flutter_svg/flutter_svg.dart';
// import 'package:flutter_svg/svg.dart';

class OtpPage extends StatefulWidget {
  const OtpPage({Key? key}) : super(key: key);

  @override
  State<OtpPage> createState() => _OtpPageState();
}

class _OtpPageState extends State<OtpPage> {
  TextEditingController txt1 = TextEditingController();
  TextEditingController txt2 = TextEditingController();
  TextEditingController txt3 = TextEditingController();
  TextEditingController txt4 = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: GlobalVariables.transparent,
      body: Container(
        decoration: const BoxDecoration(
          gradient: GlobalVariables.appGradient,
        ),
        child: SafeArea(
          bottom: false,
          child: Stack(
            children: [
              Container(
                height: double.infinity,
                margin: EdgeInsets.only(top: size.height * 0.08),
                decoration: const BoxDecoration(
                  color: GlobalVariables.backgroundColor,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20.0),
                    topRight: Radius.circular(20.0),
                  ),
                ),
                child: Padding(
                  padding:
                      const EdgeInsets.only(left: 40.0, right: 18, top: 50.0),
                  child: Column(
                    children: [
                      const Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          'Enter Code',
                          style: TextStyle(
                            fontFamily: 'assets/fonts/Poppins-Bold.ttf',
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.start,
                        ),
                      ),
                      const Text(
                        'We,ve sent an SMS with an activation code to your phone +91-XXXXXXXXXX',
                        style: TextStyle(
                          fontFamily: 'assets/fonts/Poppins-Light.ttf',
                          fontSize: 16,
                        ),
                        //textAlign: TextAlign.start,
                      ),
                      // const Text(
                      //   'Enter Code',
                      //   style: TextStyle(
                      //       fontFamily: 'assets/fonts/Poppins-Bold.ttf',
                      //       fontSize: 35,
                      //       fontWeight: FontWeight.bold),
                      //   textAlign: TextAlign.start,
                      // ),
                      // const Text(
                      //   'We,ve sent an SMS with an activation code to your phone +91-XXXXXXXXXX',
                      //   style: TextStyle(fontSize: 15),
                      //   textAlign: TextAlign.left,
                      // ),
                      const SizedBox(
                        height: 35,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          myInputBox(context, txt1),
                          myInputBox(context, txt2),
                          myInputBox(context, txt3),
                          myInputBox(context, txt4),
                        ],
                      ),
                      const SizedBox(
                        height: 125,
                      ),
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
                          "CHANGE PASSWORD",
                          style: TextStyle(
                            fontFamily: 'assets/fonts/Poppins-Regular.ttf',
                            fontSize: 17.0,
                            color: GlobalVariables.backgroundColor,
                          ),
                        ),
                      ),
                      //     const TextField(
                      //       decoration: InputDecoration(
                      //           suffixIcon: Icon(
                      //             Icons.check,
                      //             color: Colors.grey,
                      //           ),
                      //           label: Text(
                      //             'Scholar Number/User ID',
                      //             style: TextStyle(
                      //               fontWeight: FontWeight.bold,
                      //               color: Color(0xffB81736),
                      //             ),
                      //           )),
                      //     ),
                      //     const TextField(
                      //       decoration: InputDecoration(
                      //           suffixIcon: Icon(
                      //             Icons.visibility_off,
                      //             color: Colors.grey,
                      //           ),
                      //           label: Text(
                      //             'Password',
                      //             style: TextStyle(
                      //               fontWeight: FontWeight.bold,
                      //               color: Color(0xffB81736),
                      //             ),
                      //           )),
                      //     ),
                      //     const SizedBox(
                      //       height: 13,
                      //     ),
                      //     const Align(
                      //       alignment: Alignment.centerLeft,
                      //       child: Text(
                      //         'Forgot Password?',
                      //         style: TextStyle(
                      //           fontWeight: FontWeight.bold,
                      //           fontSize: 17,
                      //           color: Color(0xff281537),
                      //         ),
                      //       ),
                      //     ),
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
                      //       'CHANGE PASSWORD',
                      //       style: TextStyle(
                      //           fontWeight: FontWeight.bold,
                      //           fontSize: 17,
                      //           color: Colors.white),
                      //     ),
                      //   ),
                      // ),
                      //     const SizedBox(
                      //       height: 10,
                      //     ),
                      //     const Align(
                      //       alignment: Alignment.bottomCenter,
                      //       child: Column(
                      //         mainAxisAlignment: MainAxisAlignment.end,
                      //         crossAxisAlignment: CrossAxisAlignment.end,
                      //         children: [
                      //           Text(
                      //             "Not registered? Register",
                      //             style: TextStyle(
                      //                 fontWeight: FontWeight.bold,
                      //                 color: Color.fromARGB(255, 19, 18, 18)),
                      //           ),
                      //           // Text(
                      //           //   "Sign up",
                      //           //   style: TextStyle(

                      //           //       ///done login page
                      //           //       fontWeight: FontWeight.bold,
                      //           //       fontSize: 17,
                      //           //       color: Colors.black),
                      //           // ),
                      //         ],
                      //       ),
                      //     )
                    ],
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.only(top: 15, left: 15),
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.arrow_back_ios,
                      color: GlobalVariables.backgroundColor,
                    ),
                  ),
                ),
              ),
              const Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: EdgeInsets.only(top: 21, left: 50),
                  child: Text(
                    'Verify OTP',
                    style: TextStyle(
                      fontFamily: 'assets/fonts/Poppins-Regular.ttf',
                      fontSize: 18.0,
                      color: GlobalVariables.backgroundColor,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget myInputBox(BuildContext context, TextEditingController controller) {
  return Container(
      height: 80,
      width: 60,
      decoration: BoxDecoration(
        border: Border.all(width: 1),
        borderRadius: const BorderRadius.all(Radius.circular(20)),
      ),
      child: TextField(
        controller: controller,
        maxLength: 1,
        keyboardType: TextInputType.number,
        textAlign: TextAlign.center,
        style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 42),
        decoration: const InputDecoration(
          counterText: '',
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.transparent),
          ),
        ),
        onChanged: (value) {
          if (value.length == 1) {
            FocusScope.of(context).nextFocus();
          }
        },
      ));
}
