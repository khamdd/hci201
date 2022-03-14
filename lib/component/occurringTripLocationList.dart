class OccurTrip {
  final String destination, date, month, dayOfWeek, address, time, picture;

  OccurTrip({
    required this.destination,
    required this.date,
    required this.month,
    required this.dayOfWeek,
    required this.time,
    required this.address,
    required this.picture,
  });
}

List occurringTripList = [
  OccurTrip(
      date: "12",
      month: "4",
      dayOfWeek: "Thứ 4",
      destination: "Chợ Đà Lạt",
      time: "8:00",
      address: "Phường 1, Thành phố Đà Lạt, Lâm Đồng",
      picture: "assets/images/chodalat.png"),
  OccurTrip(
      date: "12",
      month: "4",
      dayOfWeek: "Thứ 4",
      destination: "Quảng Trường Lâm Viên",
      time: "14:00",
      address: "Phường 10, Thành phố Đà Lạt, Lâm Đồng",
      picture: "assets/images/quangtruonglamvien.png"),
  OccurTrip(
      date: "12",
      month: "4",
      dayOfWeek: "Thứ 4",
      destination: "Ga Đà Lạt",
      time: "16:00",
      address: "Phường 10, Thành phố Đà Lạt, Lâm Đồng",
      picture: "assets/images/gadalat.png"),
];
