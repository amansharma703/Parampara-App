import 'package:flutter/material.dart';

class BuyButtonWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Container(
        width: 200,
        height: 40,
        child: RaisedButton(
          onPressed: () {},
          color: Colors.black54,
          child: Text(
            'Gallery',
            style: TextStyle(color: Colors.white),
          ),
        ),
      );
}
