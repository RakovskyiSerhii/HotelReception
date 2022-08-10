import 'package:flutter/material.dart';
import 'package:hotel_reception/model/dto/hotel_update/room_buisiness_type.dart';
import 'package:hotel_reception/model/ui/hotel_model.dart';

class MainHotelInfo extends StatelessWidget {
  const MainHotelInfo({Key? key, required this.monitorModel}) : super(key: key);

  final HotelMonitorModel monitorModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(22),
          gradient: LinearGradient(colors: [
            Colors.blue.shade300,
            Colors.blue.shade600,
          ])),
      child: GridView.count(
        shrinkWrap: true,
        crossAxisCount: 2,
        childAspectRatio: 1.8,
        children: [
          _MainInfoTitle(
            title: "Balance",
            value: '${monitorModel.balance}',
            position: _MainItemPosition.topLeft,
          ),
          _MainInfoTitle(
            title: "Available Rooms",
            position: _MainItemPosition.topRight,
            value:
                '${monitorModel.list.where((element) => element.buisinessType == RoomBusinessTypeEnum.empty).length}',
          ),
          _MainInfoTitle(
            position: _MainItemPosition.bottomLeft,
            title: "People",
            value:
                '${monitorModel.list.where((element) => element.buisinessType == RoomBusinessTypeEnum.occupiedByCustomer).length}',
          ),
          _MainInfoTitle(
            position: _MainItemPosition.bottomRight,
            title: "Rooms in Repair",
            value:
                '${monitorModel.list.where((element) => element.buisinessType == RoomBusinessTypeEnum.repairing).length}',
          ),
        ],
      ),
    );
  }
}

class _MainInfoTitle extends StatelessWidget {
  const _MainInfoTitle({
    Key? key,
    required this.title,
    required this.value,
    required this.position,
  }) : super(key: key);
  final String title;
  final String value;
  final _MainItemPosition position;
  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(border: position.border),
      child: Column(
        children: [
          const SizedBox(height: 10),
          Text(
            title,
            style: const TextStyle(
                color: Colors.white, fontSize: 20, fontWeight: FontWeight.w500),
          ),
          const Spacer(),
          FittedBox(
            fit: BoxFit.fitWidth,
            child: Text(
              value,
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 26,
                  fontWeight: FontWeight.w600),
            ),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}

enum _MainItemPosition {
  topLeft,
  topRight,
  bottomLeft,
  bottomRight,
}

extension on _MainItemPosition {
  Border get border {
    const side = BorderSide(color: Colors.white, width: 0.5);
    switch (this) {
      case _MainItemPosition.topLeft:
        return const Border(right: side, bottom: side);
      case _MainItemPosition.topRight:
        return const Border(left: side, bottom: side);
      case _MainItemPosition.bottomLeft:
        return const Border(right: side, top: side);
      case _MainItemPosition.bottomRight:
        return const Border(left: side, top: side);
    }
  }
}
