import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:manit_erp/constants/global_variables.dart';

class NewsCard extends StatelessWidget {
  final String heading;
  final String date;
  final String time;
  final String description;
  final String imageAsset;
  final VoidCallback onPressed;

  const NewsCard({
    super.key,
    required this.heading,
    required this.date,
    required this.time,
    required this.description,
    required this.imageAsset,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3.0,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Stack(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 100.0,
                  height: 100.0,
                  child: SvgPicture.asset(
                    imageAsset,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(width: 16.0),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        heading,
                        style: const TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 8.0),
                      Text(
                        '$date - $time',
                        style: const TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                      const SizedBox(height: 8.0),
                      Text(
                        description,
                        style: const TextStyle(
                          fontSize: 14.0,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: InkWell(
                onTap: onPressed,
                child: const Icon(
                  Icons.arrow_forward,
                  color: GlobalVariables.splashScreenTextColor,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
