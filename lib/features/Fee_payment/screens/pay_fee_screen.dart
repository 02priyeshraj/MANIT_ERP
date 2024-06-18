import 'package:flutter/material.dart';
import 'package:manit_erp/common/widgets/custom_feecard.dart';
import 'package:manit_erp/constants/global_variables.dart';

class FeePayScreen extends StatefulWidget {
  const FeePayScreen({super.key});

  @override
  State<FeePayScreen> createState() => _FeePayScreenState();
}

class _FeePayScreenState extends State<FeePayScreen> {
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
                child: ListView(
                  padding: const EdgeInsets.all(16.0),
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 40,
                          padding: const EdgeInsets.only(left: 10, right: 10),
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.horizontal(
                              left: Radius.circular(10),
                              right: Radius.circular(10),
                            ),
                            color: GlobalVariables.buttonColor,
                          ),
                          child: const Center(
                            child: Text(
                              'Unpaid',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        // Rest of your container content goes here
                      ],
                    ),
                    // Container(
                    //   height: 40,
                    //   width: 40,
                    //   decoration: const BoxDecoration(
                    //     borderRadius: BorderRadius.horizontal(
                    //         left: Radius.circular(10),
                    //         right: Radius.circular(10)),
                    //     color: GlobalVariables.buttonColor,
                    //   ),
                    //   child: const Center(
                    //     child: Text(
                    //       'Paid',
                    //       style: TextStyle(
                    //           fontWeight: FontWeight.bold,
                    //           fontSize: 20,
                    //           color: Colors.white),
                    //     ),
                    //   ),
                    // ),
                    const SizedBox(
                      height: 19,
                    ),
                    FeeCard(
                      sem: '#### ',
                      amount: '######',
                      onPressed: () => {},
                    ),
                    const SizedBox(height: 10.0),
                    FeeCard(
                      sem: '#### ',
                      amount: '######',
                      onPressed: () => {},
                    ),
                    const SizedBox(height: 16.0),

                    Row(
                      children: [
                        Container(
                          height: 40,
                          padding: const EdgeInsets.only(left: 10, right: 10),
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.horizontal(
                              left: Radius.circular(10),
                              right: Radius.circular(10),
                            ),
                            color: GlobalVariables.buttonColor,
                          ),
                          child: const Center(
                            child: Text(
                              'Paid',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(height: 10.0),
                    FeeCard(
                      sem: '#### ',
                      amount: '######',
                      onPressed: () => {},
                    ),

                    const SizedBox(height: 10.0),
                    FeeCard(
                      sem: '#### ',
                      amount: '######',
                      onPressed: () => {},
                    ),
                    const SizedBox(height: 10.0),
                    FeeCard(
                      sem: '#### ',
                      amount: '######',
                      onPressed: () => {},
                    ),
                    const SizedBox(height: 10.0),
                    FeeCard(
                      sem: '#### ',
                      amount: '######',
                      onPressed: () => {},
                    ),
                    const SizedBox(height: 10.0),
                    FeeCard(
                      sem: '#### ',
                      amount: '######',
                      onPressed: () => {},
                    ),
                    const SizedBox(height: 10.0),
                    FeeCard(
                      sem: '#### ',
                      amount: '######',
                      onPressed: () => {},
                    ),
                  ],
                ),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.only(top: 15.0, left: 15.0),
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
                    'Fee Due',
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
