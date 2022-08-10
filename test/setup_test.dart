import 'package:flutter_test/flutter_test.dart';
import 'package:hotel_reception/model/dto/setup_dto.dart';
import 'package:hotel_reception/model/room_type.dart';
import 'package:hotel_reception/model/service.dart';
import 'package:hotel_reception/views/setup_hotel/widgets.dart';

void main() {
  group('Setup builder', () {
    final controller = RoomsController();
    controller.roomService = Service.medium;
    controller.economCount = 12;
    controller.siuteCount = 12;
    controller.presidentCount = 12;
    final setup = controller.buildSetup();
    
    test('test rooms count by type should be ${RoomType.values.length}', () {
      expect(setup.roomsByType.length, RoomType.values.length);
    });
    test('test total rooms count should be equal 36', () {
      expect(
          setup.roomsByType
              .map((e) => e.count)
              .reduce((value, element) => value + element),
          36);
    });

    test('test total rooms count shouldn\t be more than 48', () {
      controller.economCount = 48;
      controller.presidentCount = 90;
      controller.siuteCount = 10;
      expect(
          controller
              .buildSetup()
              .roomsByType
              .map((e) => e.count)
              .reduce((value, element) => value + element),
          lessThanOrEqualTo(48));
    });

    test('test Service should be ${Service.medium}', () {
      expect(
        setup.service,
        Service.medium,
      );
    });
  });
}
