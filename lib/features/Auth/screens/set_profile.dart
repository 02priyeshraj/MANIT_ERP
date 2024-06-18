import 'package:flutter/material.dart';
import 'package:manit_erp/constants/global_variables.dart';
import 'package:manit_erp/features/Auth/widgets/input_field.dart';
import 'package:manit_erp/features/Home/screens/home_screen.dart';

class SetProfile extends StatefulWidget {
  const SetProfile({super.key});

  @override
  State<SetProfile> createState() => _SetProfileState();
}

class _SetProfileState extends State<SetProfile> {
  @override
  Widget build(BuildContext context) {
    List<String> list = [
      "Your Favorite Book",
      "Your favorite Teacher",
      "Your favorite movie",
      "Your Ideal"
    ];
    String _question = list.first;
    var width = MediaQuery.of(context).size.width;
    TextEditingController usernamePasswordController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    TextEditingController answerController = TextEditingController();
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
                    Text("Set Profile",
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
                      height: double.infinity,
                      padding: EdgeInsets.all(30),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(25),
                              topRight: Radius.circular(25))),
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            InputData(
                              hintText: "Enter username",
                              lable: "Set Username",
                              controller: usernamePasswordController,
                              isPasswordField: false,
                            ),
                            SizedBox(height: 10),
                            InputData(
                              hintText: "●●●●●●●●",
                              lable: "Set Password",
                              controller: passwordController,
                              isPasswordField: true,
                            ),
                            SizedBox(height: 10),
                            Text("Security Question",
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.grey)),
                            SizedBox(height: 5),
                            Row(
                              children: [
                                Expanded(
                                  flex: 1,
                                  child: Container(
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(5)),
                                        boxShadow: [
                                          BoxShadow(
                                            color:
                                                Colors.black.withOpacity(0.15),
                                            blurRadius: 4,
                                            offset: Offset(0, 2),
                                          ),
                                        ]),
                                    child: DropdownButtonFormField(
                                        hint: Text("Security Question",
                                            style: TextStyle(
                                                fontSize: 15,
                                                fontWeight: FontWeight.w400,
                                                color: Colors.grey)),
                                        decoration: InputDecoration(
                                          filled: true,
                                          fillColor: Colors.white,
                                          contentPadding:
                                              const EdgeInsets.symmetric(
                                                  horizontal: 15, vertical: 10),
                                          focusedBorder: OutlineInputBorder(
                                            borderSide:
                                                BorderSide(color: Colors.white),
                                            borderRadius:
                                                BorderRadius.circular(5),
                                          ),
                                          enabledBorder: UnderlineInputBorder(
                                            borderSide:
                                                BorderSide(color: Colors.grey),
                                            borderRadius:
                                                BorderRadius.circular(5),
                                          ),
                                        ),
                                        value: _question,
                                        onChanged: (newValue) {
                                          setState(() {
                                            _question = newValue!;
                                          });
                                        },
                                        items: list.map((value) {
                                          return DropdownMenuItem(
                                            child: Text(value,
                                                style: TextStyle(
                                                    fontSize: 15,
                                                    fontWeight: FontWeight.w400,
                                                    color: Colors.grey)),
                                            value: value,
                                          );
                                        }).toList()),
                                  ),
                                )
                              ],
                            ),
                            SizedBox(height: 10),
                            InputData(
                              hintText: "●●●●●●●●",
                              lable: "Answer to Security Question",
                              controller: answerController,
                              isPasswordField: true,
                            ),
                            SizedBox(height: 30),
                            GestureDetector(
                              onTap: () => {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: ((BuildContext context) =>
                                            HomePage())))
                              },
                              child: Container(
                                  width: double.infinity,
                                  padding: EdgeInsets.symmetric(vertical: 10),
                                  decoration: BoxDecoration(
                                    color: GlobalVariables.buttonColor,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(8)),
                                  ),
                                  child: Center(
                                      child: Text("SUBMIT",
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w600,
                                              color: Colors.white)))),
                            )
                          ],
                        ),
                      )))
            ],
          ))),
    );
  }
}
