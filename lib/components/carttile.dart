import 'package:project2/components/quantityselector.dart';
import 'package:project2/models/cartitem.dart';
import 'package:project2/providers/art.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MyCartTile extends StatelessWidget {
  final CartItem cartItem;

  const MyCartTile({super.key, required this.cartItem});

  @override
  Widget build(BuildContext context) {
    return Consumer<ArtMethods>(
      builder: (context, artists, child) => Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 3),
            ),
          ],
        ),
        margin: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Image.asset(
                    cartItem.art.imagePath,
                    height: 70,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 11.0, bottom: 8, left: 8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(cartItem.art.name),
                      Text("\$${cartItem.art.price}"),
                      SizedBox(
                        height: 10,
                      ),
                      MyQuantitySelector(
                        quantity: cartItem.quantity,
                        art: cartItem.art,
                        onIncrement: () {
                          artists.addToCart(
                              cartItem.art);
                        },
                        onDecrement: () {
                          artists.removeFromCart(cartItem);
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
