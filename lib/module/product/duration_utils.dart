class DurationUtils {
  static const durationLow = Duration(seconds: 1);
}

class DurationShareds {
  static DurationShareds? _instace;
  static DurationShareds get instance {
    _instace ??= DurationShareds._init();
    return _instace!;
  }

  DurationShareds._init();

  final durationLow = const Duration(seconds: 1);
}
