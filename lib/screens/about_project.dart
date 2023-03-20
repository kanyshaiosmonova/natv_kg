import 'package:flutter/material.dart';
import 'package:natv_kg/core/themes/colors.dart';
import 'package:natv_kg/core/themes/fonts.dart';
import 'package:natv_kg/widgets/footer_widget.dart';

class AboutProjectWidget extends StatelessWidget {
  const AboutProjectWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: Container(
        color: AppColors.white,
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
        child: ListView(
          children: [
            Text(
              'Ваша реклама на \nвсех телеканалах \nКыргызстана '.toUpperCase(),
              style: AppTextStyles.header1,
            ),
            SizedBox(height: 50),
            Text(
              'Сервис NaTV.kg (НаТВ) – это простой и легкий \nспособ разместить рекламу!\nУже сейчас пользователям сервиса доступна \nреклама в Бишкеке и на всей территории \nКыргызстана.\nРеклама на телеканалах всей страны теперь \nдоступна каждому!',
              style: AppTextStyles.fontStyle,
            ),
            SizedBox(height: 25),
            Text(
              'Разместить бегущую строку на все телевизоры\nКыргызстана Вы можете, не выходя из дома!\nСервис NaTV.kg (НаТВ) создан для быстрого, \nудобного и легкого размещения бегущей строки.',
              style: AppTextStyles.fontStyle,
            ),
            SizedBox(height: 25),
            Text(
              'Мы учли все для более легкого \nразмещения бегущей строки:\nпрактически все телеканалы страны присутствуют \nна нашем сайте, доступны удобные способы \nоплаты, понятный и простой интерфейс.',
              style: AppTextStyles.fontStyle,
            ),
            SizedBox(height: 25),
            Text(
              'На сегодняшний день Вы можете разместить \nобъявление на телеканалах, которые смотрят по \nвсей Республике.\nБлагодаря бегущей строке Вы можете привлечь \nвнимание как городского населения, так и жителей \nрегионов.\nОхват аудитории телевидением составляет \nпрактически 90% населения.\nМы постарались предоставить Вам расширенный \nсписок каналов, который будет пополняться \nпостоянно!',
              style: AppTextStyles.fontStyle,
            ),
            SizedBox(height: 25),
            Text(
              'БЕГУЩАЯ СТРОКА НА ТЕЛЕВИЗОРЕ! ЛЕГКО, \nБЫСТРО, УДОБНО!',
              style: AppTextStyles.fontStyle,
            ),
            SizedBox(height: 25),
            Text(
              'Если у Вас есть предложения по работе сервиса и \nвопросы по сотрудничеству, напишите нам на: \ninfo@natv.kg',
              style: AppTextStyles.fontStyle,
            ),
            SizedBox(height: 30),
            FooterWidget(),
          ],
        ),
      ),
    );
  }
}
