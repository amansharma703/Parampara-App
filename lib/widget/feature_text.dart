import 'package:flutter/material.dart';

class BuyButtonWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Container(
        width: 200,
        height: 40,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            alignment: Alignment.center,
            child: Text(
              'Gallery',
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
          ),
        ),
      );
}
