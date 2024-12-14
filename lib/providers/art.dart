import 'package:project2/models/cartitem.dart';
import 'package:project2/models/art.dart';
import 'package:project2/models/artists.dart';
import 'package:flutter/material.dart';

class ArtMethods extends ChangeNotifier {
  final Artists _artists = Artists();
  final List<CartItem> _cart = [];
  List<CartItem> get cart => _cart;

  List<Art> get vangoghArtwork => _artists.allArt["vangogh"];
  List<Art> get picassoArtwork => _artists.allArt["picasso"];
  List<Art> get monetArtwork => _artists.allArt["monet"];
  List<Art> get warholArtwork => _artists.allArt["warhol"];
  List<Art> get daVinciArtwork => _artists.allArt["daVinci"];

  String _deliveryAddress = "123 Flint Drive, Atlanta, Georgia 30303";
  String get deliveryAddress => _deliveryAddress;

  final receipt = StringBuffer();

  int get artCount => _artists.allArt.length;
  List<String> get allArtKey {
    return _artists.allArt.keys.toList();
  }

  List<List<Art>> get allArtItems {
    return _artists.allArt.values.map((e) => e as List<Art>).toList();
  }

  void addToCart(Art art) {
    CartItem? cartItem;
    try {
      cartItem = _cart.firstWhere((item) => item.art == art);
    } catch (e) {
      cartItem = null;
    }

    if (cartItem != null) {
      cartItem.quantity++;
    } else {
      _cart.add(
        CartItem(art: art),
      );
    }
    notifyListeners();
  }

  void removeFromCart(CartItem cartItem) {
    int cartIndex = _cart.indexOf(cartItem);

    if (cartIndex != -1) {
      if (_cart[cartIndex].quantity > 1) {
        _cart[cartIndex].quantity--;
      } else {
        _cart.removeAt(cartIndex);
      }
    }
    notifyListeners();
  }

  void clearCart() {
    _cart.clear();
    notifyListeners();
  }

  void updateDeliveryAddress(String newAddress) {
    _deliveryAddress = newAddress;
    notifyListeners();
  }

  String displayCartReceipt() {
    final receipt = StringBuffer();
    receipt.writeln("Virtual Marketplace for Digital Art");
    receipt.writeln();

    receipt.writeln(
        "--------------------------------------------------------------");
    receipt.writeln();

    for (final cartItem in _cart) {
      receipt.writeln(
          "${cartItem.quantity} x ${cartItem.art.name} - ${_formatPrice(cartItem.art.price)}");
      receipt.writeln();
    }

    receipt.writeln(
        "--------------------------------------------------------------");
    receipt.writeln();

    receipt.writeln("Total Items: ${getTotalItemCount()}");
    receipt.writeln("Total Price: ${_formatPrice(getTotalPrice())}");

    receipt.writeln();

    receipt.writeln("Delivering to: $deliveryAddress");
    receipt.writeln();

    receipt.writeln("PAYMENT DETAILS");
    receipt.writeln("DISCOVER - 1919               ${_formatPrice(getTotalPrice())}");
    receipt.writeln();

    receipt.writeln("All Services are Final");
    receipt.writeln("No Refund; Corrections Only");
    receipt.writeln("Call us if you have any questions");
    receipt.writeln("THANK YOU!");
    receipt.writeln();

    return receipt.toString();
  }

  double getTotalPrice() {
    double total = 0.0;
    for (CartItem cartItem in _cart) {
      double itemTotal = cartItem.art.price;
      total += itemTotal * cartItem.quantity;
    }
    return total;
  }

  int getTotalItemCount() {
    int totalItemCount = 0;

    for (CartItem cartItem in _cart) {
      totalItemCount += cartItem.quantity;
    }

    return totalItemCount;
  }

  String _formatPrice(double price) {
    return "\$${price.toStringAsFixed(2)}";
  }

}
