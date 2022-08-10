part of 'hotel_monitor_cubit.dart';

@freezed
class HotelMonitorState with _$HotelMonitorState {
  const factory HotelMonitorState.initial(HotelMonitorModel model) = _Initial;
  const factory HotelMonitorState.monitiring(HotelMonitorModel model) =
      _Monitoring;
}
