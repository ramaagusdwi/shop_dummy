import 'package:flutter/material.dart';

class ButtonAddToCart extends StatelessWidget {
  VoidCallback onPressed;

  ButtonAddToCart({required this.onPressed, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        onPrimary: Colors.amber[600]!,
        primary: Colors.amber[600]!,
        minimumSize: Size(double.infinity, 60),
        padding: EdgeInsets.symmetric(horizontal: 16),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
      ),
      onPressed: () {},
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.shopping_cart,
            color: Colors.white,
            size: 24.0,
          ),
          Text(
            "ADD TO CART",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w500,
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}
