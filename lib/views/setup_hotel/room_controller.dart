part of 'widgets.dart';

class RoomsController extends ChangeNotifier {
  int _economCount = 0;
  int _siuteCount = 0;
  int _presidentCount = 0;
  int _dayTime = 1;

  Service _roomService = Service.normal;

  set economCount(int economCount) {
    if (totalCount >= _maxRoomsCount && economCount > _economCount) return;

    _economCount = economCount;
    if (totalCount > _maxRoomsCount) {
      _economCount = _maxRoomsCount - siuteCount - presidentCount;
    }
    notifyListeners();
  }

  int get economCount => _economCount;

  set dayTime(int dayTime) {
    _dayTime = dayTime;
    notifyListeners();
  }

  int get dayTime => _dayTime;

  set siuteCount(int siuteCount) {
    if (totalCount >= _maxRoomsCount && siuteCount > _siuteCount) return;

    _siuteCount = siuteCount;
    if (totalCount > _maxRoomsCount) {
      _siuteCount = _maxRoomsCount - economCount - presidentCount;
    }
    notifyListeners();
  }

  int get siuteCount => _siuteCount;

  set presidentCount(int presidentCount) {
    if (totalCount >= _maxRoomsCount && presidentCount > _presidentCount)
      return;

    _presidentCount = presidentCount;
    if (totalCount > _maxRoomsCount) {
      _presidentCount = _maxRoomsCount - economCount - siuteCount;
    }
    notifyListeners();
  }

  Service get roomService => _roomService;

  set roomService(Service roomService) {
    _roomService = roomService;
    notifyListeners();
  }

  int get presidentCount => _presidentCount;

  int get totalCount => economCount + siuteCount + presidentCount;

  int getCountByType(RoomType type) {
    switch (type) {
      case RoomType.econom:
        return economCount;
      case RoomType.suite:
        return siuteCount;
      case RoomType.president:
        return presidentCount;
    }
  }

  void updateCountByType(RoomType type, int count) {
    switch (type) {
      case RoomType.econom:
        economCount = count;
        break;
      case RoomType.suite:
        siuteCount = count;
        break;
      case RoomType.president:
        presidentCount = count;
        break;
    }
  }

  SetupDto buildSetup() {
    return SetupDto(
      roomsByType: RoomType.values
          .map((e) => RoomCount(count: getCountByType(e), type: e))
          .toList(),
      dayTime: dayTime,
      service: roomService,
    );
  }
}
