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
    var width = MediaQuery.of(context).size.width;
    List<Map<String, String>> list = [
      {"name": "Registration", "image": "assets/Images/registration.png"},
      {"name": "Result", "image": "assets/Images/results.png"},
      {"name": "Exam Time Table", "image": "assets/Images/exam_tt.png"},
      {"name": "Academic Calender", "image": "assets/Images/academic_calender.png"},
      {"name": "Career", "image": "assets/Images/career.png"},
      {"name": "Scholarship", "image": "assets/Images/scholarship.png"},
    ];
    return Scaffold(
      backgroundColor: Colors.white,
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
                                color: Colors.white
                              ),
                            ),
                            const SizedBox(height: 10),
                            Text(
                              "Branch: CSE",
                              style: TextStyle(
                                color: Colors.white70,
                                fontSize: 16,
                                fontWeight: FontWeight.w400
                              ),
                            ),
                            Text(
                              "Scholar number: 2211201451",
                              style: TextStyle(
                                color: Colors.white70,
                                fontSize: 16,
                                fontWeight: FontWeight.w300
                              ),
                            ),
                            const SizedBox(height: 10),
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 5),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.all(Radius.circular(10)),
                              ),
                              child: Text(
                                "Semester: 4 ",
                                style: TextStyle(
                                  color: GlobalVariables.textBackgroundColor,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w300
                                )
                              )
                            )
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
                                borderRadius: BorderRadius.all(Radius.circular(35)),
                                border: Border.all(color: Colors.white, width: 2)
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  const SizedBox(height: 40),
                  Container(
                    width: width,
                    padding: const EdgeInsets.only(left: 16, right: 16, top: 40),
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40)
                      )
                    ),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: _buildInfoContainer(
                                "Student Profile",
                                "assets/Images/student.png",
                                Color.fromARGB(255, 252, 243, 226),
                              ),
                            ),
                            SizedBox(width: 10),
                            Expanded(
                              child: _buildInfoContainer(
                                "Fee Payment",
                                "assets/Images/fee.png",
                                Color.fromARGB(255, 255, 216, 255),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: _buildOtherContainer(
                                "Registration",
                                "assets/Images/registration.png"
                              ),
                            ),
                            SizedBox(width: 10),
                            Expanded(
                              child: _buildOtherContainer(
                                "Result",
                                "assets/Images/results.png"
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: _buildOtherContainer(
                                "Exam Time Table",
                                "assets/Images/exam_tt.png"
                              ),
                            ),
                            SizedBox(width: 10),
                            Expanded(
                              child: _buildOtherContainer(
                                "Academic Calender",
                                "assets/Images/academic_calender.png"
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: _buildOtherContainer(
                                "Career",
                                "assets/Images/career.png"
                              ),
                            ),
                            SizedBox(width: 10),
                            Expanded(
                              child: _buildOtherContainer(
                                "Scholarship",
                                "assets/Images/scholarship.png"
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 20),
                        // Add more widgets here as needed
                      ],
                    ),
                  ),
                ],
              ),
            )
          ),
        ],
      )
    );
  }

  Widget _buildInfoContainer(String title, String imagePath, Color backgroundColor) {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        border: Border.all(
          color: GlobalVariables.textBackgroundColor,
          width: 2,
        ),
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: Column(
        children: [
          Center(
              child: Container(
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
              color: backgroundColor,
              shape: BoxShape.circle,
              // borderRadius: BorderRadius.all(Radius.circular(20)),
            ),
                child: Image(
                  image: AssetImage(imagePath),
                  width: 40,
                ),
              ),
            ),
          SizedBox(height: 10),
          Text(
            title,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,
            ),
            textAlign: TextAlign.center,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
  Widget _buildOtherContainer(String title, String imagePath) {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 245, 246, 252),
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: Column(
        children: [
          Align(
            alignment: Alignment.centerLeft,
              child: Image(
                image: AssetImage(imagePath),
                width: 50,
              ),
            ),
          SizedBox(height: 10),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              title,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
              textAlign: TextAlign.center,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }
}