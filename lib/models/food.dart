part of 'models.dart';

enum FoodType { new_food, popular, recommended }

class Food extends Equatable {
  final int id;
  final String? picturePath;
  final String name;
  final String description;
  final String? ingredients;
  final int price;
  final double? rate;
  final List<FoodType> types;

  const Food(
      {required this.id,
      required this.name,
      required this.description,
      required this.price,
      this.rate,
      this.picturePath,
      this.ingredients,
      this.types = const []});

  @override
  // TODO: implement props
  List<Object?> get props =>
      [id, picturePath, description, name, ingredients, price, rate];
}

List<Food> mockFood = const [
  Food(
    id: 1,
    picturePath:
        'https://www.pngall.com/wp-content/uploads/5/Serving-Food-PNG-Image-HD.png',
    name: 'Capcai Goreng',
    description: 'Burger made with love and love and love',
    price: 24000,
    rate: 4.2,
    ingredients: 'Kacang Merah, Kacang Polong, Kacang - Kacangan',
    types: [FoodType.new_food, FoodType.popular],
  ),
  Food(
    id: 2,
    picturePath: 'https://freepikpsd.com/file/2019/10/food-png-8.png',
    name: 'Nasi Goreng',
    description: 'Burger made with love and love and love',
    price: 24000,
    rate: 4.2,
    ingredients: 'Kacang Merah, Kacang Polong, Kacang - Kacangan',
    types: [
      FoodType.new_food,
    ],
  ),
  Food(
    id: 3,
    picturePath:
        'https://freepikpsd.com/file/2019/10/food-png-9-Transparent-Images-Free.png',
    name: 'Paket Hemat',
    description: 'Burger di tambah kentang dan minuman',
    price: 24000,
    rate: 4.2,
    ingredients: 'Kacang Merah, Kacang Polong, Kacang - Kacangan',
    types: [FoodType.new_food, FoodType.popular, FoodType.recommended],
  ),
  Food(
    id: 4,
    picturePath:
        'https://freepikpsd.com/file/2019/10/food-png-9-Transparent-Images-Free.png',
    name: 'Paket Hemat',
    description: 'Burger di tambah kentang dan minuman',
    price: 24000,
    rate: 4.2,
    ingredients: 'Kacang Merah, Kacang Polong, Kacang - Kacangan',
  ),
  Food(
    id: 5,
    picturePath:
        'https://freepikpsd.com/file/2019/10/food-png-9-Transparent-Images-Free.png',
    name: 'Paket Hemat',
    description: 'Burger di tambah kentang dan minuman',
    price: 24000,
    rate: 4.2,
    ingredients: 'Kacang Merah, Kacang Polong, Kacang - Kacangan',
  ),
  Food(
    id: 6,
    picturePath:
        'https://freepikpsd.com/file/2019/10/food-png-9-Transparent-Images-Free.png',
    name: 'Paket Hemat',
    description: 'Burger di tambah kentang dan minuman',
    price: 24000,
    rate: 4.2,
    ingredients: 'Kacang Merah, Kacang Polong, Kacang - Kacangan',
  ),
];
