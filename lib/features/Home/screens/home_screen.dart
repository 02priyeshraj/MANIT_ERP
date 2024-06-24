import 'package:flutter/material.dart';
import 'package:manit_erp/constants/global_variables.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    super.key,
  });

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    List<Map<String, String>> list = [
      {"name": "Registration", "image": "assets/Images/registration.png"},
      {"name": "Result", "image": "assets/Images/results.png"},
      {"name": "Exam Time Table", "image": "assets/Images/exam_tt.png"},
      {
        "name": "Academic Calender",
        "image": "assets/Images/academic_calender.png"
      },
      {"name": "Career", "image": "assets/Images/career.png"},
      {"name": "Scholarship", "image": "assets/Images/scholarship.png"},
    ];
    return Scaffold(
        body: Stack(
      children: [
        Container(
            decoration: const BoxDecoration(
              gradient: GlobalVariables.appGradient,
            ),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(height: 50),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Hi Student",
                              style: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white),
                            ),
                            const SizedBox(height: 10),
                            Text(
                              "Branch: CSE",
                              style: TextStyle(
                                  color: Colors.white70,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400),
                            ),
                            Text(
                              "Scholar number: 2211201451",
                              style: TextStyle(
                                  color: Colors.white70,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w300),
                            ),
                            const SizedBox(height: 10),
                            Container(
                                padding: EdgeInsets.symmetric(
                                  horizontal: 5,
                                ),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(10),
                                  ),
                                ),
                                child: Text("Semester: 4 ",
                                    style: TextStyle(
                                        color:
                                            GlobalVariables.textBackgroundColor,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w300)))
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: GestureDetector(
                                onTap: () {},
                                child: const Icon(
                                  Icons.notifications,
                                  size: 40,
                                  color: Colors.white70,
                                ),
                              ),
                            ),
                            const SizedBox(height: 5),
                            Container(
                              height: 70,
                              width: 70,
                              decoration: BoxDecoration(
                                  color: Colors.white70,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(35)),
                                  border: Border.all(
                                      color: Colors.white, width: 2)),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  const SizedBox(height: 35),
                  Container(
                    width: width,
                    padding:
                        const EdgeInsets.only(left: 16, right: 16, top: 20),
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(40),
                            topRight: Radius.circular(40))),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              padding: EdgeInsets.all(20),
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color:
                                          GlobalVariables.textBackgroundColor,
                                      width: 2),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10))),
                              child: Column(
                                children: [
                                  Container(
                                    padding: EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                        color:
                                            Color.fromARGB(255, 252, 243, 226),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(20))),
                                    child: Center(
                                      child: Image(
                                        image: AssetImage(
                                            "assets/Images/student.png"),
                                        width: 30,
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 10),
                                  Text("Student Profile",
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w400))
                                ],
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(20),
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color:
                                          GlobalVariables.textBackgroundColor,
                                      width: 2),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10))),
                              child: Column(
                                children: [
                                  Container(
                                    padding: EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                        color:
                                            Color.fromARGB(255, 255, 216, 255),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(20))),
                                    child: Center(
                                      child: Image(
                                        image:
                                            AssetImage("assets/Images/fee.png"),
                                        width: 30,
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 10),
                                  Text("Student Profile",
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w400))
                                ],
                              ),
                            )
                          ],
                        ),
                        SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: Container(
                                alignment: Alignment.centerLeft,
                                width: double.infinity,
                                padding: EdgeInsets.all(20),
                                decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10))),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Image(
                                      image: AssetImage(
                                          "assets/Images/registration.png"),
                                      width: 50,
                                    ),
                                    SizedBox(height: 10),
                                    Text("Registration",
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w400))
                                  ],
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                width: double.infinity,
                                alignment: Alignment.centerLeft,
                                padding: EdgeInsets.all(20),
                                decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10))),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Image(
                                      image: AssetImage(
                                          "assets/Images/results.png"),
                                      width: 50,
                                    ),
                                    SizedBox(height: 10),
                                    Text("Result",
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w400))
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                        SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              alignment: Alignment.centerLeft,
                              padding: EdgeInsets.all(20),
                              decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10))),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image(
                                    image:
                                        AssetImage("assets/Images/exam_tt.png"),
                                    width: 50,
                                  ),
                                  SizedBox(height: 10),
                                  Text("Exam Time Table",
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w400))
                                ],
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(20),
                              alignment: Alignment.centerLeft,
                              decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10))),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image(
                                    image: AssetImage(
                                        "assets/Images/academic_calender.png"),
                                    width: 50,
                                  ),
                                  SizedBox(height: 10),
                                  Text("Academic Calender",
                                      style: TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.w400))
                                ],
                              ),
                            )
                          ],
                        ),
                        SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              alignment: Alignment.centerLeft,
                              padding: EdgeInsets.all(20),
                              decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10))),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image(
                                    image:
                                        AssetImage("assets/Images/career.png"),
                                    width: 50,
                                  ),
                                  SizedBox(height: 10),
                                  Text("Career",
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w400))
                                ],
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(20),
                              alignment: Alignment.centerLeft,
                              decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10))),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image(
                                    image: AssetImage(
                                        "assets/Images/scholarship.png"),
                                    width: 50,
                                  ),
                                  SizedBox(height: 10),
                                  Text("Scholarship",
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w400))
                                ],
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 60)
                ],
              ),
            )),
      ],
    ));
  }
}
