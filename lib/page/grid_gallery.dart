import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import '../constants.dart';


class grid_gallery extends StatefulWidget {
  @override
  _grid_galleryState createState() => _grid_galleryState();
}

class _grid_galleryState extends State<grid_gallery> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      appBar: AppBar(title: Text("Shedules"),),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Center(
          child: Text("Will ! be Available later ...",
            style: TextStyle(
              fontSize: 19,
              color: Colors.white,
              fontWeight: FontWeight.w400,
            ),),
        ),
      ),
    );;
  }
}
