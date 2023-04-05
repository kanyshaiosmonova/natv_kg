import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:natv_kg/blocs/channel_bloc/channel_bloc.dart';
import 'package:natv_kg/blocs/channel_bloc/channel_state.dart';
import 'package:natv_kg/core/themes/colors.dart';
import 'package:natv_kg/models/channels.dart';
import 'package:natv_kg/widgets/announcement_steps_widget.dart';
import 'package:natv_kg/widgets/announcement_textfield.dart';
import 'package:natv_kg/widgets/channel_widget.dart';
import 'package:natv_kg/widgets/contact_info_form.dart';
import 'package:natv_kg/widgets/date_selector.dart';
import 'package:natv_kg/widgets/download_file.dart';
import 'package:natv_kg/widgets/footer_widget.dart';
import 'package:natv_kg/widgets/logo_widget.dart';
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
        home: ChannelBlocWrapper(
          child: Scaffold(
            backgroundColor: AppColors.backgroundColor,
            body: BlocBuilder<ChannelBloc, List<Channel>>(
                builder: (context, channels) {
              return CustomScrollView(
                slivers: [
                  SliverList(
                    delegate: SliverChildListDelegate([
                      SafeArea(
                        child: RowButtonWidget(
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
                                announcementText:
                                    'Введите текст вашего объявления'),
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
                    ]),
                  ),
                  if (channels.isNotEmpty)
                    SliverList(
                        delegate: SliverChildBuilderDelegate(
                      (context, index) {
                        final channel = channels[index];

                        return Column(
                          key: ValueKey(channel.id),
                          children: [
                            Row(
                              children: [
                                Container(
                                    margin: const EdgeInsets.all(15),
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: AppColors.border,
                                        width: 0.5,
                                      ),
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 10,
                                      vertical: 5,
                                    ),
                                    child: Image.network(
                                      channel.logo,
                                      errorBuilder: (_, __, ___) {
                                        return const FlutterLogo();
                                      },
                                    )),
                                const SizedBox(width: 10),
                                Text(channel.channelName),
                              ],
                            ),
                            const SizedBox(height: 10),
                            Text(
                              '${channel.pricePerLetter}сом',
                              style: const TextStyle(
                                fontSize: 16,
                                color: AppColors.gray,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            DateSelector(
                              onDateSelected: (pickedDate) {},
                            ),
                          ],
                        );
                      },
                      childCount: channels.length,
                    )),
                  if (channels.length > 10)
                    SliverToBoxAdapter(
                      child: ElevatedButton(
                        onPressed: () {
                          context.read<ChannelBloc>().showMoreChannels();
                        },
                        child: const Text('Больше каналов'),
                      ),
                    ),
                  SliverList(
                    delegate: SliverChildListDelegate(
                      [
                        const SizedBox(height: 10),
                        const ContactInfoForm(),
                        const SizedBox(height: 10),
                        const FooterWidget(),
                      ],
                    ),
                  )
                ],
              );
            }),
          ),
        ));
  }
}

class ChannelBlocWrapper extends StatelessWidget {
  final Widget child;
  const ChannelBlocWrapper({required this.child, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ChannelBloc()..fetchChannels(),
      child: child,
    );
  }
}
