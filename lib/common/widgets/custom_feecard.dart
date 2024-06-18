import 'package:flutter/material.dart';
import 'package:manit_erp/constants/global_variables.dart';

class FeeCard extends StatelessWidget {
  final String sem;
  final String amount;
  final VoidCallback onPressed;

  const FeeCard({
    super.key,
    required this.sem,
    required this.amount,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      decoration: const BoxDecoration(boxShadow: [
        BoxShadow(
          blurRadius: 10,
          color: GlobalVariables.textBackgroundColor,
          offset: Offset(-2, -2),
        )
      ]),
      child: Card(
        elevation: 3.0,
        //shadowColor: GlobalVariables.textBackgroundColor,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Semister : $sem',
                    style: const TextStyle(
                      fontSize: 14.0,
                    ),
                  ),
                  const SizedBox(height: 2.0),
                  Text(
                    'Amount : $amount',
                    style: const TextStyle(
                      fontSize: 14.0,
                    ),
                  ),
                ],
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: InkWell(
                  onTap: onPressed,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      GestureDetector(
                        onTap: () {},
                        child: const Text(
                          'Pay Now',
                          style: TextStyle(
                            color: GlobalVariables.splashScreenTextColor,
                            fontSize: 12,
                          ),
                        ),
                      ),
                      const Icon(
                        Icons.arrow_forward,
                        color: GlobalVariables.splashScreenTextColor,
                      ),
                    ],
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
