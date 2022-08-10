import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:hotel_reception/model/dto/hotel_update/hotel_update.dart';
import 'package:hotel_reception/model/dto/setup_dto.dart';

const String _chanelName = 'hotel/service';
const String _init = 'init';
const String _hotelStatus = 'hotelStatus';
const String _stopWorld = 'stopWorld';
const String _setupArg = 'setupArg';
const String _nextSpeed = 'changeSpeed';

class HotelChannel {
  static const platform = MethodChannel(_chanelName);

  Future startService(SetupDto setupDto) {
    return platform
        .invokeMethod(_init, {_setupArg: jsonEncode(setupDto.toJson())});
  }

  Future stopWorld() => platform.invokeMethod(_stopWorld);

  Future nextSpeed() => platform.invokeMethod(_nextSpeed);

  Stream<MonitorUpdate> get connectionStateStream =>
      const EventChannel(_hotelStatus)
          .receiveBroadcastStream()
          .map((event) => MonitorUpdate.fromJson(jsonDecode(event)));
}
