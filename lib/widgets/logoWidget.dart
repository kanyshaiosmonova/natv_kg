import 'package:flutter/material.dart';
import 'package:natv_kg/core/themes/colors.dart';

class LogoWidget extends StatelessWidget {
  const LogoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.all(10),
        padding: const EdgeInsets.only(right: 30),
        child: Row(
          children: [
            Expanded(
              child: Image.asset('assets/images/logo.png',
                  width: 100, height: 100),
            ),
            Row(
              children: [
                ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(AppColors.red),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                          side: const BorderSide(color: AppColors.red),
                        ),
                      ),
                    ),
                    child: const Text('РУ')),
                const SizedBox(width: 10),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    'КГ',
                    style: TextStyle(color: AppColors.red),
                  ),
                )
              ],
            )
          ],
        ));
  }
}
