import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hotel_reception/channel/hotel_channel.dart';
import 'package:hotel_reception/model/dto/hotel_update/hotel_update.dart';
import 'package:hotel_reception/model/dto/setup_dto.dart';
import 'package:hotel_reception/model/ui/hotel_model.dart';
import 'package:hotel_reception/model/updater/hotel_updater.dart';

part 'hotel_monitor_state.dart';
part 'hotel_monitor_cubit.freezed.dart';

class HotelMonitorCubit extends Cubit<HotelMonitorState> {
  final HotelChannel _channel = HotelChannel();
  StreamSubscription? _monitorListener;
  HotelMonitorCubit(SetupDto setupDto)
      : super(HotelMonitorState.initial(
          HotelTools.fromDto(setupDto),
        )) {
    _channel.startService(setupDto);
    _initMonitor();
  }

  void _initMonitor() {
    _monitorListener = _channel.connectionStateStream.listen(_updateHotel);
  }

  void nextSpeed() {
    _channel.nextSpeed();
  }

  void stop() {
    _monitorListener?.cancel();
    _monitorListener = null;
    _channel.stopWorld();
  }

  @override
  Future<void> close() {
    stop();
    return super.close();
  }

  void _updateHotel(MonitorUpdate hotelUpdate) {
    emit(HotelMonitorState.monitiring(state.model.fromUpdate(hotelUpdate)));
  }
}
