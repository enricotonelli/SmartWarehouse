import 'package:vibration/vibration.dart';

mixin VibrationMixin {
  Future<void> vibrate({int? duration}) async {
    final canVibrate = await Vibration.hasVibrator();
    if (canVibrate == true) await Vibration.vibrate(duration: duration ?? 5);
  }
}
