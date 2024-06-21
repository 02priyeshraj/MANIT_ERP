import 'package:flutter/material.dart';
import 'package:manit_erp/constants/global_variables.dart';
import 'package:manit_erp/features/Contact_Support/screens/contact_support_screen.dart';
import 'package:manit_erp/features/Fee_payment/screens/pay_fee_screen.dart';
import 'package:manit_erp/features/Home/screens/home_screen.dart';
import 'package:manit_erp/features/Profile/screens/profile_screen.dart';
import 'package:manit_erp/features/Registration/screens/registration_screen.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _page = 0;
  double bottomBarWidth = 42.0;
  double bottomBarBorderWidth = 5.0;

  List<Widget> pages = [
    const HomePage(),
    const FeePayScreen(),
    RegistrationScreen(),
    const ContactSupportScreen(),
  ];

  void updatePage(int page) {
    setState(() {
      _page = page;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_page],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _page,
        selectedItemColor: GlobalVariables.textBackgroundColor,
        unselectedItemColor: GlobalVariables.navBarTextColor,
        backgroundColor: GlobalVariables.backgroundColor,
        onTap: updatePage,
        selectedIconTheme: const IconThemeData(size: 24.0),
        unselectedIconTheme: const IconThemeData(size: 24.0),
        items: [
          //Home Screen
          BottomNavigationBarItem(
            icon: Container(
                width: bottomBarWidth,
                decoration: BoxDecoration(
                  border: Border(
                    top: BorderSide(
                      color: _page == 0
                          ? GlobalVariables.textBackgroundColor
                          : GlobalVariables.backgroundColor,
                      width: bottomBarBorderWidth,
                    ),
                  ),
                ),
                child: const Icon(
                  Icons.home,
                  color: GlobalVariables.navBarTextColor,
                  size: 30.0,
                )),
            label: 'Home',
          ),
          // Pay Fee Screen
          BottomNavigationBarItem(
            icon: Container(
              width: bottomBarWidth,
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(
                    color: _page == 1
                        ? GlobalVariables.textBackgroundColor
                        : GlobalVariables.backgroundColor,
                    width: bottomBarBorderWidth,
                  ),
                ),
              ),
              child: Image.asset(
                'assets/Icons/Pay_fee.png',
                height: 30.0,
                width: 30.0,
              ),
            ),
            label: 'Pay Fee',
          ),
          // Registration
          BottomNavigationBarItem(
            icon: Container(
              width: bottomBarWidth,
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(
                    color: _page == 2
                        ? GlobalVariables.textBackgroundColor
                        : GlobalVariables.backgroundColor,
                    width: bottomBarBorderWidth,
                  ),
                ),
              ),
              child: Image.asset(
                'assets/Icons/Register.png',
                height: 30.0,
                width: 30.0,
              ),
            ),
            label: 'Register',
          ),
          // Support Screen
          BottomNavigationBarItem(
            icon: Container(
              width: bottomBarWidth,
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(
                    color: _page == 3
                        ? GlobalVariables.textBackgroundColor
                        : GlobalVariables.backgroundColor,
                    width: bottomBarBorderWidth,
                  ),
                ),
              ),
              child: Image.asset(
                'assets/Icons/Support.png',
                height: 30.0,
                width: 30.0,
              ),
            ),
            label: 'Support',
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        shape: const CircleBorder(),
        backgroundColor: GlobalVariables.navBarHomeBgColor,
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const StudentProfileScreen(),
            ),
          );
        },
        child: Image.asset(
          'assets/Icons/Profile.png',
          height: 30.0,
          width: 30.0,
          color: GlobalVariables.backgroundColor,
        ),
      ),
    );
  }
}
