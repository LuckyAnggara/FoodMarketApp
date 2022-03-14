part of 'models.dart';

enum TranscationStatus { delivered, on_delivery, pending, cancelled }

class Transaction extends Equatable {
  final int id;
  final Food food;
  final int? quantity;
  final int? total;
  final DateTime? dateTime;
  final TranscationStatus? status;
  final User user;

  const Transaction({
    required this.id,
    required this.food,
    this.quantity,
    this.total,
    this.dateTime,
    this.status,
    required this.user,
  });

  Transaction copyWith(
      {required int id,
      required Food food,
      int? quantity,
      int? total,
      DateTime? dateTime,
      TranscationStatus status = TranscationStatus.on_delivery,
      required User user}) {
    return Transaction(
      id: this.id,
      food: this.food,
      quantity: this.quantity,
      total: this.total,
      dateTime: this.dateTime,
      status: this.status,
      user: this.user,
    );
  }

  @override
  // TODO: implement props
  List<Object?> get props => [id, food, quantity, total, dateTime, status, user];
}

List<Transaction> mockTransactions = [
  Transaction(
    id: 1,
    food: mockFood[1],
    quantity: 5,
    total: (mockFood[1].price * 10 * 1.1).round() + 5000,
    dateTime: DateTime.now(),
    status: TranscationStatus.on_delivery,
    user: mockUser,
  ),
  Transaction(
    id: 2,
    food: mockFood[3],
    quantity: 8,
    total: (mockFood[3].price * 10 * 1.1).round() + 5000,
    dateTime: DateTime.now(),
    status: TranscationStatus.delivered,
    user: mockUser,
  ),
  Transaction(
    id: 2,
    food: mockFood[4],
    quantity: 2,
    total: (mockFood[4].price * 10 * 1.1).round() + 5000,
    dateTime: DateTime.now(),
    status: TranscationStatus.cancelled,
    user: mockUser,
  ),
];
