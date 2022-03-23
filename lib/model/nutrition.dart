class Nutrition {
  final double calories;
  final double fat;
  final double calcium;
  final double carbohydrate;
  final double sodium;
  final double sugar;
  final double protein;
  final double netCarbs;
  final double potassium;
  final double iron;

  const Nutrition(
      {required this.calories,
      required this.fat,
      required this.calcium,
      required this.carbohydrate,
      required this.sodium,
      required this.sugar,
      required this.protein,
      required this.netCarbs,
      required this.potassium,
      required this.iron});

  factory Nutrition.fromJson(Map<double, dynamic> json) => Nutrition(
      calories: json['calories'],
      fat: json['fat'],
      calcium: json['calcium'],
      carbohydrate: json['carbohydrate'],
      sodium: json['sodium'],
      sugar: json['sugar'],
      protein: json['protein'],
      netCarbs: json['netCarbs'],
      potassium: json['potassium'],
      iron: json['iron']);

  Map<String, dynamic> toJson() => {
        "calories": calories,
        "fat": fat,
        "calcium": calcium,
        "carbohydrate": carbohydrate,
        "sodium": sodium,
        "sugar": sugar,
        "protein": protein,
        "netCarbs": netCarbs,
        "potassium": potassium,
        "iron": iron,
      };
}
