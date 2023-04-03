import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:natv_kg/blocs/channel_bloc/channel_bloc.dart';
import 'package:natv_kg/core/themes/colors.dart';
import 'package:natv_kg/models/channels.dart';
import 'package:natv_kg/widgets/date_selector.dart';

class ChannelWidget extends StatelessWidget {
  const ChannelWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      color: Colors.white,
      child: BlocProvider(
        create: (_) => ChannelBloc()..fetchChannels(),
        child: BlocBuilder<ChannelBloc, List<Channel>>(
          builder: (context, channels) {
            if (channels.isNotEmpty) {
              return Column(
                children: [
                  Flexible(
                    child: ListView.builder(
                      itemCount: channels.length,
                      itemBuilder: (context, index) {
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
                                  child: Image.network(channel.logo),
                                ),
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
                    ),
                  ),
                  if (channels.length > 10)
                    ElevatedButton(
                      onPressed: () {
                        context.read<ChannelBloc>().showMoreChannels();
                      },
                      child: const Text('Больше каналов'),
                    ),
                ],
              );
            } else {
              return const Center(child: CircularProgressIndicator());
            }
          },
        ),
      ),
    );
  }
}
