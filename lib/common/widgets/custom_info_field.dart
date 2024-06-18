import 'package:flutter/material.dart';
import 'package:manit_erp/constants/global_variables.dart';

class InfoField extends StatelessWidget {
  final String heading;
  final String data;
  const InfoField({super.key, required this.heading, required this.data});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            heading,
            style: const TextStyle(
              fontSize: 12.0,
              fontWeight: FontWeight.w500,
              color: GlobalVariables.lightBlackColor,
            ),
          ),
          const SizedBox(height: 5.0),
          Text(
            data,
            style: const TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 10.0),
          const Divider(
            color: Colors.black,
            thickness: 1.0,
          ),
        ],
      ),
    );
  }
}
