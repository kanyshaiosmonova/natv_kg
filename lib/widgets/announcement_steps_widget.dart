import 'package:flutter/material.dart';

import '../core/themes/colors.dart';

class AnnouncementStepsWidget extends StatelessWidget {
  final String stepNumberText;
  final String announcementText;
  const AnnouncementStepsWidget({
    Key? key,
    required this.stepNumberText,
    required this.announcementText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              border: Border.all(
                color: AppColors.red,
                width: 2.0,
              ),
            ),
            child: Text(stepNumberText),
          ),
          Expanded(child: Text(announcementText)),
        ],
      ),
    );
  }
}
