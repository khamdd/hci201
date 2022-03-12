class OccurTrip {
  final String destination, date, month, dayOfWeek, address, time;

  OccurTrip({
    required this.destination,
    required this.date,
    required this.month,
    required this.dayOfWeek,
    required this.time,
    required this.address,
  });
}

List occurringTripList = [
  OccurTrip(
      date: "12",
      month: "4",
      dayOfWeek: "Wed",
      destination: "Chợ Đà Lạt",
      time: "8:00",
      address: "Phường 1, Thành phố Đà Lạt, Lâm Đồng"),
  OccurTrip(
      date: "12",
      month: "4",
      dayOfWeek: "Wed",
      destination: "Quảng Trường Lâm Viên",
      time: "14:00",
      address: "Phường 10, Thành phố Đà Lạt, Lâm Đồng"),
  OccurTrip(
    date: "12",
    month: "4",
    dayOfWeek: "Wed",
    destination: "Ga Đà Lạt",
    time: "16:00",
    address: "Phường 10, Thành phố Đà Lạt, Lâm Đồng",
  ),
];
