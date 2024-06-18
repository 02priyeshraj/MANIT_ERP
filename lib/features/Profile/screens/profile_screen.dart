import 'package:flutter/material.dart';
import 'package:manit_erp/common/widgets/custom_info_field.dart';
import 'package:manit_erp/common/widgets/students_profile_card.dart';
import 'package:manit_erp/constants/global_variables.dart';

class StudentProfileScreen extends StatefulWidget {
  static const routeName = '/student-profile';
  const StudentProfileScreen({super.key});

  @override
  State<StudentProfileScreen> createState() => _StudentProfileScreenState();
}

class _StudentProfileScreenState extends State<StudentProfileScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size * 0.4;
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
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 15.0, left: 15.0),
                        child: Row(
                          children: [
                            IconButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              icon: const Icon(
                                Icons.arrow_back_ios,
                                color: GlobalVariables.backgroundColor,
                              ),
                            ),
                            const Text(
                              'My Profile',
                              style: TextStyle(
                                fontSize: 18.0,
                                color: GlobalVariables.backgroundColor,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 12.0,
                          right: 15.0,
                        ),
                        child: GestureDetector(
                          onTap: () {},
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 16.0, vertical: 8.0),
                            margin: const EdgeInsets.all(8.0),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            child: const Text(
                              'DONE',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 16.0,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Container(
                height: double.infinity,
                margin: EdgeInsets.only(top: size.height * 0.2),
                decoration: const BoxDecoration(
                  color: GlobalVariables.backgroundColor,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20.0),
                    topRight: Radius.circular(20.0),
                  ),
                ),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 15.0, right: 15.0, top: 15.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ProfileCard(
                              name: 'XYZ',
                              scholarNumber: '2211201454',
                              branch: 'CSE',
                              hostel: '10C',
                              room: '10313',
                              roomcapacity: '3',
                              activefrom: '22/11/2021',
                              imageAsset: '',
                            ),
                            const SizedBox(height: 5.0),
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: InfoField(
                              heading: 'DOB',
                              data: '02/03/2004',
                            ),
                          ),
                          const SizedBox(width: 10.0),
                          Expanded(
                            child: InfoField(
                              heading: 'Aadhar',
                              data: '1234 5678 4567 8912',
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: InfoField(
                              heading: 'Nationality',
                              data: 'Indian',
                            ),
                          ),
                          const SizedBox(width: 10.0),
                          Expanded(
                            child: InfoField(
                              heading: 'Gender',
                              data: 'Male',
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: InfoField(
                              heading: 'Blood Group',
                              data: 'O+',
                            ),
                          ),
                          const SizedBox(width: 10.0),
                          Expanded(
                            child: InfoField(
                              heading: 'Admission Session',
                              data: '2022-2023',
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: InfoField(
                              heading: 'Phone Number',
                              data: '+91-8903543098',
                            ),
                          ),
                          const SizedBox(width: 10.0),
                          Expanded(
                            child: InfoField(
                              heading: 'Alternate Phone Number',
                              data: '+91-8903543098',
                            ),
                          ),
                        ],
                      ),
                      InfoField(
                        heading: 'Alternate Phone Number',
                        data: '+91-8903543098',
                      ),
                      InfoField(
                        heading: 'Alternate Phone Number',
                        data: '+91-8903543098',
                      ),
                      InfoField(
                        heading: 'Alternate Phone Number',
                        data: '+91-8903543098',
                      ),
                      InfoField(
                        heading: 'Alternate Phone Number',
                        data: '+91-8903543098',
                      ),
                      InfoField(
                        heading: 'Alternate Phone Number',
                        data: '+91-8903543098',
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
