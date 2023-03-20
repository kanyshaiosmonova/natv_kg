import 'package:flutter/material.dart';
import 'package:natv_kg/core/themes/colors.dart';
import 'package:natv_kg/core/themes/fonts.dart';
import 'package:natv_kg/widgets/footer_widget.dart';

class QuestionAnswerWidget extends StatelessWidget {
  const QuestionAnswerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: Container(
        color: AppColors.white,
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
        child: ListView(
          scrollDirection: Axis.vertical,
          children: const [
            Text(
              'РАЗМЕЩЕНИЕ \nРЕКЛАМЫ ДЛЯ \nЮРИДИЧЕСКИХ ЛИЦ',
              style: AppTextStyles.header1,
            ),
            SizedBox(height: 50),
            QuestionWidget(label: 'Что такое сервис NaTV.kg?', number: '1.'),
            SizedBox(height: 15),
            AnswerWidget(
                label:
                    'Сервис NaTV.kg (НаТВ) создан \nдля быстрого, удобного и легкого \nразмещения рекламы. Теперь \nразместить рекламу на все \nтелевизоры Кыргызстана Вы можете, быстро, просто и не \nвыходя из дома с любой точки нашей Планеты!'),
            SizedBox(height: 15),
            QuestionWidget(
                label: 'Как разместить рекламу на ТВ?', number: '2.'),
            SizedBox(height: 8),
            Text(
                'Для того, чтобы разместить бегущую строку или баннерную рекламу на ТВ Вам необходимо:'),
            SizedBox(height: 10),
            AnswerWidget(
              label: 'Ввести текст объявления или загрузить баннер',
            ),
            SizedBox(height: 10),
            AnswerWidget(
              label:
                  'Выбрать даты и телеканалы для показа. Нажать кнопку «Разместить» и получить платежный код для оплаты через Терминалы и Кассы или моментально оплатить банковской картой.',
            ),
            SizedBox(height: 10),
            QuestionWidget(
                label: 'Как узнать (получить) платежный код?', number: '3.'),
            AnswerWidget(
                label:
                    'При нажатии кнопки «Разместить объявление», Вы перейдете на страницу с указанием платежного кода, суммы к оплате и срока к оплате'),
            SizedBox(height: 5),
            AnswerWidget(
                label:
                    'При оформлении заявки укажите свой номер мобильного телефона и/или e-mail и Вам придет Ваш платежный код'),
            SizedBox(height: 5),
            AnswerWidget(
                label:
                    'Если Вы не указали контакты, Вы можете написать нам на info@natv.kg или просто оформить новую заявку'),
            SizedBox(height: 10),
            QuestionWidget(
                label: 'На какие каналы можно разместить рекламу?',
                number: '4.'),
            SizedBox(height: 8),
            AnswerWidget(
                label:
                    'К размещению доступны телеканалы: Рен ТВ, НТС, Любимый HD, Семейный+Домашний, КТРК, ТНТ Кыргызстан, Пирамида, МИР, Эхо Манаса, Пятница 2.0, НТВ KG, НБТ, Ош ТВ, Ынтымак ТВ, TVKG, TV2.KG, Prime TV, Умут ТВ, СТВ, Санат, 8 канал, 7 канал, НУР, Азия ТВ, НТС Спорт, Кыргыз ТВ, Керемет ТВ, EVENT TV, 5 канал, Максимум ТВ, ЭлТР, ТНТ 4, Tigiboo'),
            SizedBox(height: 5),
            AnswerWidget(
                label:
                    'Также к размещению доступна реклама на радио: Авторадио, Радио Романтика, Тумар, Хит FM.'),
            SizedBox(height: 10),
            QuestionWidget(
                label: 'В какое время будет выходить моя бегущая строка?',
                number: '5.'),
            AnswerWidget(
                label:
                    'Ваше объявление будет выходить в течение всего дня, выбранного к размещению. В среднем от 8 до 30 раз в день. Количество показов зависит от выбранного Вами телеканала.'),
            SizedBox(height: 10),
            QuestionWidget(label: 'Как оплатить за объявление?', number: '6.'),
            AnswerWidget(
                label:
                    'Услуги размещения бегущей строки, Вы можете оплатить любым удобным способом.Оплата принимается в сети терминалов: OptimaBank, Касса 24, M&TC, Quickpay, Terempay, Qiwi, Umai, Pay24'),
            SizedBox(height: 5),
            AnswerWidget(
                label:
                    'Через электронные кошельки и интернет банкинг: Optima24, ЭЛСОМ, UMAI, O!Деньги, Balance.kg, MegaPay, Visa, Master Card, Pay24'),
            SizedBox(height: 5),
            AnswerWidget(
                label:
                    'Также оплата за объявления на ТВ принимается в отделениях ГП «Кыргыз почтасы».'),
            SizedBox(height: 5),
            AnswerWidget(
                label:
                    'Для юридических лиц, оплата за размещение бегущей строки и баннерной рекламы на ТВ также возможна перечислением на банковский счет. '),
            SizedBox(height: 10),
            QuestionWidget(
                label: 'Почему нужно оплатить до 15:00?', number: '7.'),
            SizedBox(height: 10),
            AnswerWidget(
                label:
                    'Оплату необходимо произвести до 15:00 дня, предшествующего первому дню размещения рекламы. Это необходимо для того, чтобы телеканалы подготовили Вашу рекламу для размещения в эфире.'),
            SizedBox(height: 10),
            QuestionWidget(
                label: 'Как рассчитывается стоимость за рекламу?',
                number: '8.'),
            SizedBox(height: 10),
            AnswerWidget(
                label:
                    'Количество символов*стоимость за 1 символ*количество дней.'),
            SizedBox(height: 10),
            QuestionWidget(
                label: 'Что будет если я не успею оплатить до 15:00?',
                number: '9.'),
            SizedBox(height: 10),
            AnswerWidget(
                label:
                    'Ваша реклама будет пущена на следующий возможный день после оплаты.'),
            SizedBox(height: 10),
            QuestionWidget(
                label: 'Нужно ли указывать номер телефона в тексте объявления?',
                number: '10.'),
            SizedBox(height: 10),
            AnswerWidget(
                label:
                    'Чтобы Ваши потенциальные клиенты знали куда обращаться, нужно указать номер телефона. Контактные данные внизу страницы служат только для оповещений о статусе Вашей заявки, заполнив контактные данные Вам придет SMS оповещение и/или сообщение на электронную почту. Если Вы укажите номер телефона только в форме для оповещения, а в тексте объявление номер телефона указан не будет, на телеканале Ваше объявление выйдет таким как, было указано в поле «текст объявления».'),
            SizedBox(height: 10),
            QuestionWidget(
                label:
                    'Если я оплачиваю от организации, какие документы Вы можете мне предоставить?',
                number: '11.'),
            SizedBox(height: 10),
            AnswerWidget(
                label:
                    'Мы можем Вам предоставить счет-фактуру и акт выполненных работ и все необходимые документы для бухгалтерии.'),
            SizedBox(height: 10),
            QuestionWidget(
                label: 'Что если я хочу отменить заявку?', number: '12.'),
            SizedBox(height: 10),
            AnswerWidget(
                label:
                    'Ваша заявка считается не активной до тех пор, пока Вы не произведете оплату. Поэтому Вы можете пробовать и рассчитывать стоимость сколько Вам необходимо.'),
            SizedBox(height: 10),
            QuestionWidget(
                label:
                    'Если я хочу разместить баннер, но у меня нет готового баннера и/или его размер (формат) не подходит?',
                number: '13.'),
            SizedBox(height: 10),
            AnswerWidget(
                label:
                    'Мы всегда рады помочь нашим клиентам и поэтому Вы можете написать нам на info@natv.kg или разместить заявку и указать свой номер телефона. И мы с Вами обязательно свяжемся и разработаем лучший баннер именно для Вас!'),
            SizedBox(height: 10),
            QuestionWidget(
                label: 'Можно ли просто поздравить близких?', number: '14.'),
            SizedBox(height: 10),
            AnswerWidget(
                label:
                    'Конечно можно и нужно! Упоминание Ваших близких на всех телеканалах страны порадует Ваших родных!'),
            SizedBox(height: 10),
            QuestionWidget(
                label: 'Обязательно ли указывать контакты внизу страницы?',
                number: '15.'),
            SizedBox(height: 10),
            AnswerWidget(
                label:
                    'Вовсе не обязательно, но указав их Вы получите уведомления об оформлении заявки, о поступлении оплаты и другую информацию.'),
            SizedBox(height: 10),
            QuestionWidget(
                label: 'Могу ли я оплатить заявку банковской картой?',
                number: '16.'),
            SizedBox(height: 10),
            AnswerWidget(
                label:
                    'Вы можете произвести оплату банковской картой Visa и MasterCard за размещение Вашей рекламы на ТВ. После оформления заявки на сайте Вам необходимо нажать кнопку "оплатить" - ввести реквизиты Вашей банковской карты - подтвердить оплату.'),
            SizedBox(height: 5),
            AnswerWidget(
                label:
                    'Для этого необходимо чтобы для Вашей карты была открыта возможность проведения платежей в интернете. Уточнить об этой возможности Вы можете у банка, в котором была получена Ваша карта.'),
            SizedBox(height: 20),
            Text(
                ' Остались вопросы? Напишите нам на info@natv.kg мы обязательно Вам ответим.'),
            SizedBox(height: 50),
            FooterWidget(),
          ],
        ),
      ),
    );
  }
}

class AnswerWidget extends StatelessWidget {
  final String label;

  const AnswerWidget({Key? key, required this.label}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
            padding: const EdgeInsets.only(right: 10),
            child: const Icon(
              Icons.remove,
              size: 30,
              color: AppColors.red,
            )),
        Expanded(child: Text(label)),
      ],
    );
  }
}

class QuestionWidget extends StatelessWidget {
  final String label;
  final String number;
  const QuestionWidget({Key? key, required this.label, required this.number})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(width: 20),
        Text(number),
        const SizedBox(width: 10),
        Text(label, style: AppTextStyles.fBolds18),
        SizedBox(height: 20),
      ],
    );
  }
}
