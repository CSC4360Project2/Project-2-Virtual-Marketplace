import 'package:project2/providers/art.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:intl/intl.dart';

class MyCheckout extends StatelessWidget {
  const MyCheckout({Key? key});

  @override
  Widget build(BuildContext context) {
    DateTime currentTime = DateTime.now();
    DateTime estimatedDeliveryTime = currentTime.add(Duration(days: 7));

    String formattedDate = DateFormat('MMMM d, y').format(estimatedDeliveryTime);
    String formattedTime = DateFormat('hh:mm a').format(estimatedDeliveryTime);

    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(25, 50, 25, 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: Theme.of(context).colorScheme.secondary,
                ),
                borderRadius: BorderRadius.circular(16),
              ),
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "DRIVER",
                        style: TextStyle(
                          color: Colors.teal,
                          fontFamily: 'Georgia',
                          fontSize: 27,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.account_circle_rounded,
                            size: 50,
                            color: Colors.teal,
                          ),
                          SizedBox(width: 20),
                          Text(
                            "Jone Doe",
                            style: TextStyle(
                              color: Colors.blueGrey,
                              fontFamily: 'Courier',
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              fontStyle: FontStyle.italic,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.call,
                              size: 35,
                              color: Colors.blueGrey,
                            ),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.message,
                              size: 35,
                              color: Colors.blueGrey,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Estimated Delivery Date:",
                        style: TextStyle(
                          color: Colors.teal,
                          fontFamily: 'Georgia',
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "$formattedDate at $formattedTime",
                        style: TextStyle(
                          color: Colors.teal,
                          fontFamily: 'Georgia',
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 25),
            Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: Theme.of(context).colorScheme.secondary,
                ),
                borderRadius: BorderRadius.circular(16),
              ),
              padding: const EdgeInsets.all(25),
              child: Consumer<ArtMethods>(
                builder: (context, artists, child) => Text(
                  "${artists.displayCartReceipt()}",
                  style: const TextStyle(
                    fontSize: 16,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}