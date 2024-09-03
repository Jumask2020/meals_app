class Restaurant {
  late String name, des, image;
  bool favurate;
  bool evaluation;

  Restaurant({
    required this.name,
    required this.des,
    required this.image,
    this.favurate = false,
    this.evaluation=false
  });
}

// class Evaluation {
//   int num;
//   bool isSelected;

//   Evaluation({this.num = 0, this.isSelected = false});
// }
