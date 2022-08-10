enum WorldSpeed {
  normal,
  fast,
  faster,
}

extension WorldSpeedExtension on WorldSpeed {
  int get speed {
    switch (this) {
      case WorldSpeed.normal:
        return 1;
      case WorldSpeed.fast:
        return 2;
      case WorldSpeed.faster:
        return 3;
    }
  }
}
