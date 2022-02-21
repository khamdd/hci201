class Trip {
  final String destination, date, group, time;
  final List route;

  Trip({
    required this.destination,
    required this.date,
    required this.group,
    required this.time,
    required this.route,
  });
}

List onGoingTripList = [
  Trip(
      date: "1/1/2023",
      group: "HAI",
      destination: "Vinh Ha Long",
      time: "8:00",
      route: []),
  Trip(
      date: "2/1/2023",
      group: "BA",
      destination: "Phong Nha",
      time: "7:00",
      route: []),
];
Trip occuranceTrip = Trip(
    date: "1/1/2023",
    group: "HAI",
    destination: "Vinh Ha Long",
    time: "8:00",
    route: ["Điểm bắt đầu", "Điểm 1", "Điểm 2", "Điểm 3", "Điểm kết thúc"]);
