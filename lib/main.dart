import 'package:flutter/material.dart';
import 'package:natv_kg/core/themes/colors.dart';
import 'package:natv_kg/widgets/announcement_steps_widget.dart';
import 'package:natv_kg/widgets/announcement_textfield.dart';
import 'package:natv_kg/widgets/download_file.dart';
import 'package:natv_kg/widgets/footer_widget.dart';
import 'package:natv_kg/widgets/logoWidget.dart';
import 'package:natv_kg/widgets/row_button_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  MyAppState createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  bool isAnnouncementSelected = true;

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
              onChange: (updatedIndex) {
                setState(() {
                  isAnnouncementSelected = updatedIndex == 0;
                });
              },
            ),
            const LogoWidget(),
            if (isAnnouncementSelected) ...[
              const SizedBox(height: 10),
              const AnnouncementTextField(),
            ] else ...[
              const SizedBox(height: 10),
              const DownloadFile(),
            ],
            Container(
              margin: const EdgeInsets.all(20),
              width: double.infinity,
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
            // const SizedBox(height: 10),
            // const ChannelWidget(),
            const SizedBox(height: 10),
            const FooterWidget(),
          ],
        ),
      ),
    );
  }
}
