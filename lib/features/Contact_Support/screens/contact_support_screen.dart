import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:manit_erp/constants/global_variables.dart';

class ContactSupportScreen extends StatefulWidget {
  const ContactSupportScreen({super.key});

  @override
  State<ContactSupportScreen> createState() => _ContactSupportScreenState();
}

class _ContactSupportScreenState extends State<ContactSupportScreen> {
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
                    'Support',
                    style: TextStyle(
                      fontFamily: 'assets/fonts/Poppins-Regular.ttf',
                      fontSize: 18.0,
                      color: GlobalVariables.backgroundColor,
                    ),
                  ),
                ),
              ),
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset(
                          'assets/Images/support2.svg',
                          width: 200.0,
                          height: 200.0,
                        ),
                        const SizedBox(height: 30),
                        const Text(
                          'Get Support',
                          style: TextStyle(
                            fontFamily: 'assets/fonts/Poppins-Regular.ttf',
                            fontSize: 24.0,
                            color: GlobalVariables.blackColor,
                          ),
                        ),
                        const SizedBox(height: 50),
                        const SizedBox(
                          width: 280,
                          child: Text(
                            'For any support request \n regards your queries and problem \n please feel free to speak with us at below.',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontFamily: 'assets/fonts/Poppins-Regular.ttf',
                              fontSize: 16.0,
                              color: GlobalVariables.lightBlackColor,
                            ),
                          ),
                        ),
                        const SizedBox(height: 20.0),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                              children: [
                                TextButton.icon(
                                  onPressed: () => {},
                                  icon: SvgPicture.asset(
                                    'assets/icons/Phone.svg',
                                    width: 20.0,
                                    height: 20.0,
                                  ),
                                  label: const Text(
                                    'Call Us',
                                    style: TextStyle(
                                        fontFamily:
                                            'assets/fonts/Poppins-Regular.ttf',
                                        fontSize: 16.0,
                                        color: GlobalVariables.blackColor),
                                  ),
                                ),
                                const Text(
                                  '+91-XXXXX XXXXX',
                                  style: TextStyle(
                                    fontFamily:
                                        'assets/fonts/Poppins-Regular.ttf',
                                    fontSize: 12.0,
                                    color: GlobalVariables.navBarTextColor,
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                TextButton.icon(
                                  onPressed: () => {},
                                  icon: SvgPicture.asset(
                                    'assets/icons/Mail.svg',
                                    width: 20.0,
                                    height: 20.0,
                                  ),
                                  label: const Text(
                                    'Email Us',
                                    style: TextStyle(
                                      color: GlobalVariables.blackColor,
                                      fontFamily:
                                          'assets/fonts/Poppins-Regular.ttf',
                                      fontSize: 16.0,
                                    ),
                                  ),
                                ),
                                const Text(
                                  'maniterp@gmail.com',
                                  style: TextStyle(
                                    fontFamily:
                                        'assets/fonts/Poppins-Regular.ttf',
                                    fontSize: 12.0,
                                    color: GlobalVariables.navBarTextColor,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
