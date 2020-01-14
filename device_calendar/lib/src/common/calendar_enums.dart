enum DayOfTheWeek {
  Sunday,
  Monday,
  Tuesday,
  Wednesday,
  Thursday,
  Friday,
  Saturday
}

enum MonthOfTheYear {
  January,
  Feburary,
  March,
  April,
  May,
  June,
  July,
  August,
  September,
  October,
  November,
  December
}

enum FirstToLastPosition {
  First,
  Second,
  Third,
  Fourth,
  Last
}

// Adding extensions for enum values as Flutter does not support it yet
// TODO: Replace this to enum values when introduced. Ref: https://github.com/dart-lang/language/issues/158
extension MonthOfTheYearExtension on MonthOfTheYear {
  static int _value(MonthOfTheYear val) {
    switch (val) {
      case MonthOfTheYear.January: return 1;
      case MonthOfTheYear.Feburary: return 2;
      case MonthOfTheYear.March: return 3;
      case MonthOfTheYear.April: return 4;
      case MonthOfTheYear.May: return 5;
      case MonthOfTheYear.June: return 6;
      case MonthOfTheYear.July: return 7;
      case MonthOfTheYear.August: return 8;
      case MonthOfTheYear.September: return 9;
      case MonthOfTheYear.October: return 10;
      case MonthOfTheYear.November: return 11;
      case MonthOfTheYear.December: return 12;
      default: return 1;
    }
  }

  int get value => _value(this);
  
}

extension FirstToLastPositionExtension on FirstToLastPosition {
  static int _value(FirstToLastPosition val) {
    switch (val) {
      case FirstToLastPosition.First: return 1;
      case FirstToLastPosition.Second: return 2;
      case FirstToLastPosition.Third: return 3;
      case FirstToLastPosition.Fourth: return 4;
      case FirstToLastPosition.Last: return -1;
      default: return 1;
    }
  }

  int get value => _value(this);
}

extension IntExtensions on int {
  static MonthOfTheYear _getMonthEnumValue(int val) {
    switch (val) {
      case 1: return MonthOfTheYear.January;
      case 2: return MonthOfTheYear.Feburary;
      case 3: return MonthOfTheYear.March;
      case 4: return MonthOfTheYear.April;
      case 5: return MonthOfTheYear.May;
      case 6: return MonthOfTheYear.June;
      case 7: return MonthOfTheYear.July;
      case 8: return MonthOfTheYear.August;
      case 9: return MonthOfTheYear.September;
      case 10: return MonthOfTheYear.October;
      case 11: return MonthOfTheYear.November;
      case 12: return MonthOfTheYear.December;
      default: return MonthOfTheYear.January;
    }
  }

  static FirstToLastPosition _getSetPosEnumValue(int val) {
    switch (val) {
      case 1: return FirstToLastPosition.First;
      case 2: return FirstToLastPosition.Second;
      case 3: return FirstToLastPosition.Third;
      case 4: return FirstToLastPosition.Fourth;
      case -1: return FirstToLastPosition.Last;
      default: return FirstToLastPosition.First;
    }
  }

  MonthOfTheYear get getMonthEnumValue => _getMonthEnumValue(this);
  FirstToLastPosition get getSetPosEnumValue => _getSetPosEnumValue(this);
}