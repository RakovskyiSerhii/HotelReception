import 'package:freezed_annotation/freezed_annotation.dart';

part 'net_revenue.freezed.dart';

@freezed
class NetRevenue with _$NetRevenue {
  factory NetRevenue({
    required DateTime dateTime,
    required int value,
  }) = _NetRevenue;
}
