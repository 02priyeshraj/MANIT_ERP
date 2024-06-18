import 'package:flutter/material.dart';
import 'package:manit_erp/common/widgets/custom_newscard.dart';
import 'package:manit_erp/constants/global_variables.dart';

class NewsScreen extends StatelessWidget {
  const NewsScreen({super.key});

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
                    NewsCard(
                      heading: 'News ',
                      date: 'May 10, 2024',
                      time: '08:30 AM',
                      description:
                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
                      imageAsset: 'assets/Images/Box.svg',
                      onPressed: () => {},
                    ),
                    const SizedBox(height: 16.0),
                    NewsCard(
                      heading: 'Important Update',
                      date: 'May 9, 2024',
                      time: '02:45 PM',
                      description:
                          'Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
                      imageAsset: 'assets/Images/Box.svg',
                      onPressed: () => {},
                    ),
                    const SizedBox(height: 16.0),
                    NewsCard(
                      heading: 'Event',
                      date: 'May 22, 2024',
                      time: '02:45 PM',
                      description:
                          'Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
                      imageAsset: 'assets/Images/Box.svg',
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
                    'News , Events & Notifications',
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
