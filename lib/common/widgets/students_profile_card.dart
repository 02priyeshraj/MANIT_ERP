import 'package:flutter/material.dart';

import 'package:manit_erp/constants/global_variables.dart';

class ProfileCard extends StatelessWidget {
  final String imageAsset;
  final String name;
  final String scholarNumber;
  final String branch;
  final String hostel;
  final String room;
  final String roomcapacity;
  final String activefrom;

  const ProfileCard({
    super.key,
    required this.name,
    required this.scholarNumber,
    required this.branch,
    required this.hostel,
    required this.room,
    required this.roomcapacity,
    required this.activefrom,
    required this.imageAsset,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: GlobalVariables.backgroundColor,
      elevation: 3.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
        side: const BorderSide(
          width: 0.5,
          color: GlobalVariables.lightBlackColor,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Stack(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 150.0,
                  height: 150.0,
                  child: Image.asset(
                    'assets/Icons/Profile.png',
                    fit: BoxFit.contain,
                  ),
                ),
                const SizedBox(width: 16.0),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        name,
                        style: const TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'Scholar No.: $scholarNumber',
                        style: const TextStyle(
                          fontSize: 14.0,
                        ),
                      ),
                      Text(
                        'Branch: $branch',
                        style: const TextStyle(
                          fontSize: 14.0,
                        ),
                      ),
                      const SizedBox(height: 10.0),
                      Text(
                        'Hostel: $hostel',
                        style: const TextStyle(
                          fontSize: 14.0,
                        ),
                      ),
                      Text(
                        'Room No.: $room',
                        style: const TextStyle(
                          fontSize: 14.0,
                        ),
                      ),
                      Text(
                        'Active From: $activefrom',
                        style: const TextStyle(
                          fontSize: 14.0,
                        ),
                      ),
                      Text(
                        'Room Capacity: $roomcapacity',
                        style: const TextStyle(
                          fontSize: 14.0,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
