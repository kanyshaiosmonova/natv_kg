import 'package:flutter/material.dart';
import 'package:natv_kg/core/themes/colors.dart';
import 'package:natv_kg/screens/placement_of_banner.dart';
import 'package:natv_kg/widgets/announcement_steps_widget.dart';
import 'package:natv_kg/widgets/channel_widget.dart';
import 'package:natv_kg/widgets/footer_widget.dart';
import 'package:natv_kg/widgets/row_button_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

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
              labels: const [
                'РАЗМЕЩЕНИЕ СТРОЧНОГО \nОБЪЯВЛЕНИЯ',
                'РАЗМЕЩЕНИЕ БАННЕРНОЙ \nРЕКЛАМЫ'
              ],
              onChange: (updatedIndex) {},
            ),
            Image.asset('assets/images/logo.png', width: 100, height: 100),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 70, vertical: 30),
              width: 200,
              height: 200,
              color: AppColors.white,
              child: Column(
                children: [
                  Expanded(
                    flex: 1,
                    child: Container(
                      color: AppColors.red,
                      child: Center(
                        child: Text(
                          'Введите текст объявления',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Container(
                      child: Center(
                        child: TextField(
                          textAlign: TextAlign.center,
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.only(bottom: 40),
                            border: InputBorder.none,
                            hintText: 'Скидки! Бутик женской одежды!',
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
              child: Column(
                children: const [
                  AnnouncementStepsWidget(
                      stepNumberText: '1',
                      announcementText: 'Введите текст вашего объявления'),
                  AnnouncementStepsWidget(
                      stepNumberText: '2',
                      announcementText:
                          'Разберите телеканалы и даты, и нажмите \n"Разместить объявление"'),
                  AnnouncementStepsWidget(
                      stepNumberText: '3',
                      announcementText: 'Оплатите объявление'),
                ],
              ),
            ),
            const SizedBox(height: 10),
            const ChannelWidget(),
            const SizedBox(height: 10),
            const FooterWidget(),
          ],
        ),
      ),
      routes: {
        '/banner': (context) => BannerWidget(),
      },
    );
  }
}
