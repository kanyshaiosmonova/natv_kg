import 'package:flutter/material.dart';
import 'package:natv_kg/core/themes/colors.dart';
import 'package:natv_kg/widgets/announcement_steps_widget.dart';
import 'package:natv_kg/widgets/footer_widget.dart';
import 'package:natv_kg/widgets/row_button_widget.dart';

class BannerWidget extends StatelessWidget {
  const BannerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'Arimo',
      ),
      home: Scaffold(
        backgroundColor: AppColors.backgroundColor,
        body: ListView(
          scrollDirection: Axis.vertical,
          children: [
            RowButtonWidget(
              labels: [
                'РАЗМЕЩЕНИЕ СТРОЧНОГО \nОБЪЯВЛЕНИЯ',
                'РАЗМЕЩЕНИЕ БАННЕРНОЙ \nРЕКЛАМЫ'
              ],
              onChange: (updatedIndex) {},
            ),
            Image.asset('assets/images/logo.png', width: 100, height: 100),
            // Container(
            //   margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
            //   child: Column(
            //     children: const [
            //       AnnouncementStepsWidget(
            //           stepNumberText: '1',
            //           announcementText: 'Введите текст вашего объявления'),
            //       AnnouncementStepsWidget(
            //           stepNumberText: '2',
            //           announcementText:
            //               'Разберите телеканалы и даты, и нажмите \n"Разместить объявление"'),
            //       AnnouncementStepsWidget(
            //           stepNumberText: '3',
            //           announcementText: 'Оплатите объявление'),
            //     ],
            //   ),
            // ),
            // const SizedBox(height: 10),
            // const FooterWidget(),
          ],
        ),
      ),
    );
  }
}
