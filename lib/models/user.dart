part of 'models.dart';

class User extends Equatable {
  final int id;
  final String name;
  final String email;
  final String address;
  final String? houseNumber;
  final String? phoneNumber;
  final String? city;
  final String picturePath;

  const User({
    required this.id,
    required this.name,
    required this.email,
    required this.address,
    this.houseNumber,
    this.phoneNumber,
    this.city,
    required this.picturePath,
  });

  @override
  // TODO: implement props
  List<Object?> get props =>
      [id, name, email, address, houseNumber, phoneNumber, city, picturePath];
}

User mockUser = User(
  id: 1,
  name: 'Kalula Jane',
  address: 'Jl Jenderal Sudirman',
  houseNumber: '123',
  city: 'Bandung',
  phoneNumber: '08213123123',
  email: 'kalula.jane@gmail.com',
  picturePath: 'https://www.pngitem.com/pimgs/m/191-1912450_girl-women-face-freetoedit-beautiful-woman-png-hd.png'
);
