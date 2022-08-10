import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hotel_reception/model/ui/net_revenue.dart';
import 'package:hotel_reception/model/ui/world_speed.dart';
import 'package:hotel_reception/model/ui/room_model.dart';

part 'hotel_model.freezed.dart';

@freezed
class HotelMonitorModel with _$HotelMonitorModel {
  HotelMonitorModel._();

  factory HotelMonitorModel({
    required int balance,
    required List<RoomModel> list,
    required int monthIncome,
    required DateTime date,
    required WorldSpeed worldSpeed,
    required List<NetRevenue> netRevenue,
  }) = _HotelModel;
}
