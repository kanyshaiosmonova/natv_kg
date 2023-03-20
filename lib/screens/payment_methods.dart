import 'package:flutter/material.dart';
import 'package:natv_kg/core/themes/colors.dart';
import 'package:natv_kg/core/themes/fonts.dart';
import 'package:natv_kg/widgets/footer_widget.dart';

class PaymentMethodsWidget extends StatelessWidget {
  const PaymentMethodsWidget({Key? key}) : super(key: key);

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
              'Способы оплаты \nуслуг размещения \nрекламы на ТВ'.toUpperCase(),
              style: AppTextStyles.header1,
            ),
            const SizedBox(height: 50),
            const Text(
              'Услуги размещения рекламы на ТВ, Вы можете \nоплатить любым удобным способом.',
              style: AppTextStyles.fontStyle,
            ),
            const SizedBox(height: 25),
            const Text('Оплата принимается в сети терминалов:',
                style: AppTextStyles.fontStyle),
            const Text(
              'OptimaBank, Касса 24, M&TC, Quickpay, \nTerempay, Umai.',
              style: AppTextStyles.fontStyleBold,
            ),
            const SizedBox(height: 25),
            const Text(
              'Через электронные кошельки и интернет банкинг:',
              style: AppTextStyles.fontStyle,
            ),
            const Text(
                'Optima24, ЭЛСОМ, UMAI, O!Деньги, Balance.kg, \nMegaPay, Visa, Master Card',
                style: AppTextStyles.fontStyleBold),
            const Text(
              'Также оплата за объявления на тв принимается в \nотделениях ГП «Кыргыз почтасы».',
              style: AppTextStyles.fontStyle,
            ),
            const SizedBox(height: 25),
            const Text(
              'Для юридических лиц, оплата за размещение \nрекламы на ТВ, также, возможна перечислением \nна банковский счет.',
              style: AppTextStyles.fontStyle,
            ),
            Container(
              child: Column(
                children: [
                  Image.asset('assets/images/mtc.gif'),
                  const Text('Раздел - Реклама'),
                  Image.asset('assets/images/optimabank.gif'),
                  const Text('Раздел - Кабельное Телевидение'),
                  Image.asset('assets/images/optima24.gif'),
                  const Text('Раздел - Кабельное Телевидение'),
                  Image.asset('assets/images/terempay.gif'),
                  const Text('Раздел - Телевидение'),
                  Image.asset('assets/images/quickpay.gif'),
                  const Text('Раздел - Объявления'),
                  Image.asset('assets/images/odengi.gif'),
                  const Text('Раздел - Телевидение'),
                  Image.asset('assets/images/balance.gif'),
                  const Text('Раздел - Телевидение'),
                  Image.asset('assets/images/kyrgyzpochta.gif'),
                  const Text('Раздел - Все отделения связи'),
                  Image.asset('assets/images/elsom.gif'),
                  const Text('Раздел - Телевидение'),
                  Image.asset('assets/images/kassa24.gif'),
                  const Text('Раздел - Реклама'),
                  Image.asset('assets/images/umai.gif'),
                  const Text('Раздел - Телевидение'),
                  Image.asset('assets/images/megapay.gif'),
                  const Text('Раздел - Телевидение'),
                  Image.asset('assets/images/visa.gif'),
                  const Text('Раздел - VISA'),
                  Image.asset('assets/images/mastercard.gif'),
                  const Text('Раздел - MasterCard'),
                  Image.asset('assets/images/pay24.gif'),
                  const Text('Раздел - Телевидение'),
                ],
              ),
            ),
            const SizedBox(height: 30),
            const FooterWidget(),
          ],
        ),
      ),
    );
  }
}
