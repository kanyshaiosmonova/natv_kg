import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:natv_kg/models/channels.dart';

class ChannelBloc extends Cubit<List<Channel>> {
  ChannelBloc() : super([]);

  Future<void> fetchChannels() async {
    final channels = await Channel.getChannels();
    emit(channels);
  }

  void showMoreChannels() {
    emit([...state, ...state.take(10)]);
  }
}
