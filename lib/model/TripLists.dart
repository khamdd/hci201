class Trip {
  final String destination,
      date,
      month,
      year,
      dayOfWeek,
      group,
      time,
      periodTime,
      picture,
      tripName;

  Trip({
    required this.destination,
    required this.date,
    required this.month,
    required this.year,
    required this.dayOfWeek,
    required this.group,
    required this.time,
    required this.periodTime,
    required this.picture,
    required this.tripName,
  });
}

List onGoingTripList = [
  Trip(
    date: "12",
    month: "4",
    year: "2022",
    dayOfWeek: "WED",
    group: "HAI",
    destination: "Vịnh Hạ Long",
    time: "8:00",
    periodTime: "7",
    picture: "assets/images/vinh-ha-long-1.jpg",
    tripName: "Xuyên Việt",
  ),
  Trip(
      date: "22",
      month: "4",
      year: "2022",
      dayOfWeek: "FRI",
      group: "BA",
      destination: "Phong Nha",
      time: "7:00",
      periodTime: "3",
      picture: "assets/images/phongnhaa.jpg",
      tripName: "Tham quan Phong Nha"),
];
Trip occuranceTrip = Trip(
  date: "12",
  month: "4",
  year: "2022",
  dayOfWeek: "WED",
  group: "HAI",
  destination: "Vịnh Hạ Long",
  time: "8:00",
  periodTime: "4",
  picture: "assets/images/vinh-ha-long-1.jpg",
  tripName: "Xuyên Việt",
);
