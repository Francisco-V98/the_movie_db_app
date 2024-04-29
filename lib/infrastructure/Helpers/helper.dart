class Helper {
  static String formatDuration(int minutes) {
    int hours = minutes ~/ 60;
    int remainingMinutes = minutes % 60;

    String hoursString = hours > 0 ? '${hours}h ' : '';
    String minutesString = '${remainingMinutes}m';

    return '$hoursString$minutesString';
  }
}
