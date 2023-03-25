import 'package:flutter/material.dart';
import 'package:natv_kg/core/themes/colors.dart';
import 'package:natv_kg/core/themes/fonts.dart';
import 'package:natv_kg/widgets/footer_widget.dart';

class LegalEntitiesWidget extends StatelessWidget {
  const LegalEntitiesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: Container(
        color: AppColors.white,
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
        child: ListView(
          children: const [
            Text(
              'РАЗМЕЩЕНИЕ \nРЕКЛАМЫ ДЛЯ \nЮРИДИЧЕСКИХ ЛИЦ',
              style: AppTextStyles.header1,
            ),
            SizedBox(height: 50),
            Text(
              'Уважаемый Рекламодатель!\nСервис NaTV.kg позволяет \nорганизациям с легкостью размещать \nрекламу на ТВ и получать все \nотчетные документы вовремя и не \nвыходя из офиса. Размещайте заявки \nна нашем сайте в течение месяца и \nмы предоставим Вам все \nнеобходимые документы (счет-\nфактуру, акт выполненных работ и \nдругие любые документы по Вашему \nзапросу).',
              style: AppTextStyles.fNormals19,
            ),
            SizedBox(height: 25),
            Text(
              '1) Оформите заявку на нашем сайте \n– введите текст или загрузите баннер, \nвыберите телеканалы и даты, \nзаполните контактную информацию \n(укажите название организации и \nконтактный номер телефона) и \nнажмите «Разместить объявление».',
              style: AppTextStyles.fNormals19,
            ),
            Text(
                '* В поле «Ф.И.О./название организации» \nвсегда указывайте одинаково название \nорганизации для корректного сбора данных \nнашей системой.',
                style: AppTextStyles.fNormals16),
            SizedBox(height: 25),
            Text(
              '2) Вы получите уникальный \nплатежный код. Произведите оплату \nпосредством любого удобного \nплатежного способа. Если Вам \nудобнее произвести оплату \nбанковским переводом – наши \nреквизиты:',
              style: AppTextStyles.fNormals19,
            ),
            SizedBox(height: 25),
            Text(
              'ОсОО «НаТВ», ИНН 01210201710151',
              style: AppTextStyles.fNormals19,
            ),
            SizedBox(height: 25),
            Text(
              'Банк: Филиал ОАО «Оптима Банк» в г. тБишкек №5, БИК: 109016 ',
              style: AppTextStyles.fNormals19,
            ),
            SizedBox(height: 25),
            Text(
              'Номер счета: 1091620093760186 ',
              style: AppTextStyles.fNormals19,
            ),
            SizedBox(height: 25),
            Text(
              'После оплаты отправьте нам копию \nплатежного поручения на почту \ninfo@natv.kg и Ваша реклама будет \nразмещена!',
              style: AppTextStyles.fNormals19,
            ),
            SizedBox(height: 25),
            Text(
              '3) Наша система в конце месяца \nсоберет все Ваши оплаченные заявки \nза весь месяц и автоматически \nсформирует отчетные документы! До \n15 числа месяца, следующего за \nотчетным, все необходимые \nдокументы будут Вам доставлены \nкурьером.\nБудьте впереди Ваших конкурентов!',
              style: AppTextStyles.fNormals19,
            ),
            SizedBox(height: 25),
            Text(
              'Разместите Вашу рекламу прямо сейчас!',
              style: AppTextStyles.fBolds24,
            ),
            SizedBox(height: 25),
            Text(
              'По всем дополнительным вопросам, свяжитесь с нами: info@natv.kg',
              style: AppTextStyles.fNormals19,
            ),
            SizedBox(height: 30),
            FooterWidget(),
          ],
        ),
      ),
    );
  }
}
