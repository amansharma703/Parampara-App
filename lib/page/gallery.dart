import 'package:flutter/material.dart';
class gallery extends StatefulWidget {
  @override
  _galleryState createState() => _galleryState();
}

class _galleryState extends State<gallery> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Gallery"),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Center(
          child: Container(
//            color: Colors.red,
            height: MediaQuery.of(context).size.height,
            child: Column(
              children: [

                SizedBox(height: 50,),
                Center(child: CircularProgressIndicator()),
                SizedBox(height: 50,),
                Text("Gallery is being updated ...",
                style: TextStyle(
                  fontSize: 19,
                  color: Colors.black87,
                  fontWeight: FontWeight.w400,
                ),),
            ]),
          ),
        ),
      ),
    );
  }
}
