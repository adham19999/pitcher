class DistInfo {
  final String name;
  final String name2;
  final String image;
  final String description;
  final String price;
  String ratting;
  DistInfo({
    required this.name,
    required this.price,
    required this.description,
    required this.name2,
    required this.image,
    required this.ratting,
  });
}

List smallcon = [
  DistInfo(
      description: "BOOOOOOM.",
      name: "THE DNT",
      price: "\$${10}",
      name2: " wooden baseball bat",
      ratting: " 9.1 Perfect (125)",
      image: "assets/baseball-bat.png"),
  DistInfo(
      description: "DON'TELL ME U ARE INNOCENT.",
      price: "\$${12}",
      name: "THE GODFATHER",
      name2: " Aluminum Alloy baseball bat ",
      ratting: " 8.1 Good (122)",
      image: "assets/baseball-bat.png"),
  DistInfo(
      description: "Little pig, little pig, let me in!!!!",
      price: "\$${11}",
      name: "LUCILLE",
      name2: "THE WALKING DEAD VERSION IF NEGAN",
      ratting: " 8.3 Good (123)",
      image: "assets/baseball-bat.png"),
  DistInfo(
      name: "VENOM",
      description: "WE ARE VENOM. ",
      price: "\$${10}",
      name2: " THE MARVEL VERSION",
      ratting: " 8.1 Good (122)",
      image: "assets/baseball-bat.png"),
];
