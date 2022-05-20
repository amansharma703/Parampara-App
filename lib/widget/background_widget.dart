import 'package:flutter/material.dart';

import '../data/movies.dart';
import '../model/movie.dart';

class BackgroundWidget extends StatelessWidget {
  final PageController controller;
  List<String> urls;
  BackgroundWidget({
    required this.controller,
    required this.urls,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => PageView.builder(
        reverse: true,
        physics: NeverScrollableScrollPhysics(),
        controller: controller,
        itemBuilder: (context, index) {
          final movie = urls[index];

          return buildBackground(url: movie);
        },
        itemCount: urls.length,
      );

  Widget buildBackground({required String url}) => Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            child: Image.network(url, fit: BoxFit.cover),
          ),
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                stops: [0.07, 0.75],
                colors: [
                  Colors.black.withOpacity(0.0001),
                  Colors.black,
                ],
              ),
            ),
          )
        ],
      );
}
