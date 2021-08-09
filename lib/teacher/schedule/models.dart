class Period {
  Period(name, length){
    this.name = name;
    this.lengthInMinutes = length;
  }

  String name;
  int lengthInMinutes;

  DateTime startsAt;
  DateTime endsAt;
}