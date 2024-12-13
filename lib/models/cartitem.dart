import 'package:project2/models/art.dart';

class CartItem {
  Art art;
  int quantity;

  CartItem({
    required this.art,
    this.quantity = 1,
  });

  double get totalPrice {
    return art.price * quantity;
  }
}