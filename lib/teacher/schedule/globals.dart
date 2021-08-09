import 'models.dart';
import 'RemainingPeriods.dart';
import 'CurrentPeriod.dart';
import 'TodayText.dart';

List<Period> timeTable = [];
DateTime now = DateTime.now();
bool displayTimer = false;
String today;

final DateTime collegeStart =
DateTime(now.year, now.month, now.day, 10, 0, 0, 0, 0);
DateTime collegeEnd =
DateTime(now.year, now.month, now.day, 16, 40, 0, 0, 0);
DateTime relativeEnding;

RemainingPeriodsState remainingState = RemainingPeriodsState();
CurrentState currentPeriodState = CurrentState();
TodayState todayState = TodayState();