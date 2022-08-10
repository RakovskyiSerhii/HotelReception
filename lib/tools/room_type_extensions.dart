import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hotel_reception/model/dto/hotel_update/room_buisiness_type.dart';
import 'package:hotel_reception/model/room_type.dart';

extension RoomTypeExtension on RoomType {
  Color get color {
    switch (this) {
      case RoomType.econom:
        return Colors.green;
      case RoomType.suite:
        return Colors.orange;
      case RoomType.president:
        return Colors.blue;
    }
  }
}

extension RoomBuisinessTypeEnumExtension on RoomBusinessTypeEnum {
  Widget get icon {
    switch (this) {
      case RoomBusinessTypeEnum.occupiedByCustomer:
        return SvgPicture.asset(
          'assets/icons/ic_occupied_state.svg',
          color: Colors.white,
        );
      case RoomBusinessTypeEnum.dirty:
        return SvgPicture.asset(
          'assets/icons/ic_dirty_state.svg',
          color: Colors.white,
        );
      case RoomBusinessTypeEnum.cleaning:
        return SvgPicture.asset(
          'assets/icons/ic_cleaning_state.svg',
          color: Colors.white,
        );
      case RoomBusinessTypeEnum.repairing:
        return SvgPicture.asset(
          'assets/icons/ic_repair_state.svg',
          color: Colors.white,
        );
      case RoomBusinessTypeEnum.empty:
        return SvgPicture.asset(
          'assets/icons/ic_empty_state.svg',
          color: Colors.white,
        );
    }
  }

  Color get color {
    switch (this) {
      case RoomBusinessTypeEnum.occupiedByCustomer:
        return Colors.greenAccent;
      case RoomBusinessTypeEnum.dirty:
        return Colors.redAccent;
      case RoomBusinessTypeEnum.cleaning:
        return Colors.yellowAccent;
      case RoomBusinessTypeEnum.repairing:
        return Colors.grey;
      case RoomBusinessTypeEnum.empty:
        return Colors.blueAccent;
    }
  }
}
