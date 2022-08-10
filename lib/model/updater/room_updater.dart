import 'package:hotel_reception/model/dto/hotel_update/room_update.dart';
import 'package:hotel_reception/model/ui/room_model.dart';
import 'package:hotel_reception/tools/extension.dart';

extension RoomModelExtension on RoomModel {
  RoomModel updateWith(RoomUpdate roomUpdate) {
    return copyWith(
      daysOcupation: roomUpdate.businessType.daysOccupation,
      lifeTime: roomUpdate.lifetime,
      buisinessType: roomUpdate.businessType.type,
    );
  }
}

extension RoomModelExtensionT on List<RoomModel> {
  List<RoomModel> updateWith(List<RoomUpdate> roomsUpdate) {
    return mapIndexed(
      (index, value) => this[index].updateWith(roomsUpdate[index]),
    );
  }
}
