class DispInfo2 {
  String name;
  String image;
  String time;
  String ratting;
  DispInfo2(
      {required this.name,
      required this.ratting,
      required this.time,
      required this.image});
}

List BigCon = [
  DispInfo2(
      name: "SONIA",
      ratting: " 9.1 Perfect (125)",
      time: "USED",
      image: "assets/baseball-bat.png"),
  DispInfo2(
      name: "REDDEAD",
      ratting: " 8.1 Good (122)",
      time: "USED_NEW",
      image: "assets/baseball-bat.png"),
  DispInfo2(
      name: "SL3AWY",
      ratting: " 8.3 Good (123)",
      time: "NEW",
      image: "assets/baseball-bat.png"),
  DispInfo2(
      name: "DARSH",
      ratting: " 8.4 Very Good (124)",
      time: "NEW",
      image: "assets/baseball-bat.png"),
];
