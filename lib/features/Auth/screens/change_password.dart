import 'package:flutter/material.dart';
import 'package:manit_erp/constants/global_variables.dart';
import 'package:manit_erp/features/Auth/screens/set_profile.dart';
import 'package:manit_erp/features/Auth/widgets/input_field.dart';

class ChangePassword extends StatefulWidget {
  const ChangePassword({super.key});

  @override
  State<ChangePassword> createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    TextEditingController oldPasswordController = TextEditingController();
    TextEditingController newPasswordController = TextEditingController();
    TextEditingController confirmPasswordController = TextEditingController();
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: GlobalVariables.appGradient,
        ),
        child: SafeArea(
          child: Column(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
                child: Row(
                  children: [
                    Icon(
                      Icons.arrow_back_ios,
                      color: Colors.white,
                      size: 15,
                    ),
                    SizedBox(width: 5),
                    Text("Change Password",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                            color: Colors.white))
                  ],
                ),
              ),
              SizedBox(height: 50),
              Expanded(
                child: Container(
                  width: width,
                  padding: EdgeInsets.all(30),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(25),
                          topRight: Radius.circular(25))),
                  child: Column(
                    children: [
                      InputData(
                        hintText: "●●●●●●●●",
                        lable: "Old Password",
                        controller: oldPasswordController,
                        isPasswordField: true,
                      ),
                      SizedBox(height: 10),
                      InputData(
                        hintText: "●●●●●●●●",
                        lable: "New Password",
                        controller: newPasswordController,
                        isPasswordField: true,
                      ),
                      SizedBox(height: 10),
                      InputData(
                        hintText: "●●●●●●●●",
                        lable: "Confirm Password",
                        controller: confirmPasswordController,
                        isPasswordField: true,
                      ),
                      SizedBox(height: 30),
                      GestureDetector(
                        onTap: () => {
                          //handle otp
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: ((BuildContext context) => SetProfile()),
                            ),
                          ),
                        },
                        child: Container(
                          width: double.infinity,
                          padding: EdgeInsets.symmetric(vertical: 10),
                          decoration: BoxDecoration(
                            color: GlobalVariables.buttonColor,
                            borderRadius: BorderRadius.all(
                              Radius.circular(8),
                            ),
                          ),
                          child: Center(
                            child: Text(
                              "GET OTP",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
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
