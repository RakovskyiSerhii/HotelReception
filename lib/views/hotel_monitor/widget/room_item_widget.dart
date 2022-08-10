import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hotel_reception/model/ui/room_model.dart';
import 'package:hotel_reception/tools/room_type_extensions.dart';

class HotelRoomWidget extends StatelessWidget {
  const HotelRoomWidget(this._roomModel, {Key? key}) : super(key: key);
  final RoomModel _roomModel;

  Widget _buildCircleItem(Color backgroundColor, Widget child) {
    return Container(
      height: 25,
      width: 25,
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
              color: Colors.black.withOpacity(.5),
              blurRadius: 2,
              spreadRadius: .2)
        ],
        shape: BoxShape.circle,
        color: backgroundColor,
      ),
      child: Center(child: child),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            decoration: BoxDecoration(
                border:
                    Border.all(width: 1, color: Colors.grey.withOpacity(.6)),
                borderRadius: BorderRadius.circular(12),
                gradient: LinearGradient(
                  colors: [
                    Colors.grey.withOpacity(.6),
                    _roomModel.roomType.color,
                  ],
                  stops: [
                    1 - (_roomModel.lifeTime / 100),
                    1 - (_roomModel.lifeTime / 100)
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                )),
          ),
        ),
        Align(
          alignment: Alignment.topLeft,
          child: _buildCircleItem(
            _roomModel.buisinessType.color,
            _roomModel.buisinessType.icon,
          ),
        ),
        Align(
          alignment: Alignment.topRight,
          child: _buildCircleItem(
            _roomModel.roomType.color,
            Text(
              _roomModel.roomType.name.substring(0, 1).toUpperCase(),
              style: const TextStyle(color: Colors.white),
            ),
          ),
        ),
        Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SvgPicture.asset(
              'assets/icons/ic_bad.svg',
              color: Colors.white,
            ),
          ),
        )
      ],
    );
  }
}
