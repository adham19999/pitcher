import 'package:flutter/material.dart';
import 'package:flutter_application_5/Models/bigcontainer.dart';
import 'package:flutter_application_5/Models/smallcontainermodel.dart';
import 'package:flutter_application_5/Utilities/colors.dart';
import 'package:flutter_application_5/Utilities/constant.dart';

// Add the QuantityWidget class here or import it if it's in a separate file
class QuantityWidget extends StatefulWidget {
  const QuantityWidget({super.key});

  @override
  _QuantityWidgetState createState() => _QuantityWidgetState();
}

class _QuantityWidgetState extends State<QuantityWidget> {
  int quantity = 0; // Initial quantity

  void increment() {
    setState(() {
      quantity++; // Increase quantity
    });
  }

  void decrement() {
    setState(() {
      if (quantity > 0) {
        quantity--; // Decrease quantity if greater than 0
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    Size sc = MediaQuery.of(context).size; // Get screen size

    return Row(
      children: [
        const Text(
          "QUANTITY",
          style: TextStyle(
            fontSize: 22, // Adjusted font size to fit inside the container
            fontWeight: FontWeight.bold,
            color: whiteclr,
          ),
        ),
        const SizedBox(
          width: 5,
        ),
        GestureDetector(
          onTap: decrement,
          child: Container(
            height: sc.height * 0.050,
            width: sc.width * 0.08,
            decoration: const BoxDecoration(
              color: lbackgroundclr,
              shape: BoxShape.circle,
            ),
            child: const Center(
              child: Icon(
                Icons.remove,
                color: whiteclr,
              ),
            ),
          ),
        ),
        SizedBox(
          width: sc.width * 0.04, // Space between buttons
        ),
        Text(
          "$quantity", // Display dynamic quantity
          style: const TextStyle(
            fontSize: 22,
            color: whiteclr,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          width: sc.width * 0.04, // Space between buttons
        ),
        GestureDetector(
          onTap: increment,
          child: Container(
            height: sc.height * 0.050,
            width: sc.width * 0.08,
            decoration: const BoxDecoration(
              color: lbackgroundclr,
              shape: BoxShape.circle,
            ),
            child: const Center(
              child: Icon(
                Icons.add,
                color: whiteclr,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class DetailScreen extends StatefulWidget {
  final DistInfo details;
  final DispInfo2 detail;

  const DetailScreen({super.key, required this.details, required this.detail});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  // ignore: unused_field
  final int _value = 1;

  @override
  Widget build(BuildContext context) {
    Size sc = Utils().getScreenSize();
    return Scaffold(
      backgroundColor: backgroundclr,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Container(
                    height: sc.height * 0.270,
                    width: sc.width,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(widget.detail.image),
                      ),
                    ),
                  ),
                  Positioned(
                    right: 0,
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Container(
                        height: sc.height * 0.043,
                        width: sc.width * 0.1,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: const Color(0xff757283),
                        ),
                        child: const Center(
                          child: Icon(
                            Icons.favorite_rounded,
                            color: whiteclr,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 12.0, right: 12, left: 12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: sc.height * 0.010),
                    Text(
                      widget.details.name2,
                      style: const TextStyle(
                        fontSize: 21.5,
                        fontWeight: FontWeight.bold,
                        color: whiteclr,
                      ),
                    ),
                    SizedBox(height: sc.height * 0.010),
                    Row(
                      children: [
                        const Icon(
                          Icons.star,
                          color: Color(0xffFCD506),
                          size: 16,
                        ),
                        Text(
                          widget.details.ratting,
                          style:
                              const TextStyle(fontSize: 12.5, color: whiteclr),
                        ),
                      ],
                    ),
                    SizedBox(height: sc.height * 0.01),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          widget.details.price,
                          style: const TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: whiteclr,
                          ),
                        ),
                        const QuantityWidget(), // Add the QuantityWidget here
                      ],
                    ),
                    SizedBox(height: sc.height * 0.006),
                    Text(
                      widget.details.description,
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.grey[400],
                      ),
                    ),
                    SizedBox(height: sc.height * 0.015),
                    const Text(
                      "Choose Additive",
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: whiteclr,
                      ),
                    ),
                    // ... Rest of your code remains unchanged
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
