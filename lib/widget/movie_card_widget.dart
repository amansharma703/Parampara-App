import 'package:flutter/material.dart';
import '../model/movie.dart';

class MovieCardWidget extends StatelessWidget {
  final String url;

   MovieCardWidget({
    required this.url,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Padding(
    padding: const EdgeInsets.all(5.0),
    child: Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
          bottomLeft: Radius.circular(30),
          bottomRight: Radius.circular(30),
        ),
      ),
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
      child: Column(
        children: [
          Expanded(child: buildImage(url: url)),
          const SizedBox(height: 4),
          Text(
            "...",
            textAlign: TextAlign.center,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          const SizedBox(height: 4),
          // buildGenre(url: url),
          const SizedBox(height: 4),
          buildRating(url: url),
          Text(
            '...',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ],
      ),
    ),
  );

  Widget buildImage({required String url}) => Container(
    margin: const EdgeInsets.symmetric(vertical: 12),
    padding: const EdgeInsets.symmetric(horizontal: 12),
    child: ClipRRect(
      borderRadius: BorderRadius.all(Radius.circular(25)),
      child: Image.network(url, fit: BoxFit.cover),
    ),
  );

  // Widget buildGenre({required url url}) => Row(
  //   mainAxisAlignment: MainAxisAlignment.center,
  //   children: movie.sport.eventlist
  //       .map((genre) => Padding(
  //     padding: const EdgeInsets.symmetric(horizontal: 5),
  //     child: Container(
  //       decoration: BoxDecoration(
  //           border: Border.all(color: Colors.grey.shade600),
  //           borderRadius: BorderRadius.circular(15)),
  //       padding: EdgeInsets.all(5),
  //       child: Text(
  //         genre.title,
  //         style: TextStyle(color: Colors.grey[600], fontSize: 12),
  //       ),
  //     ),
  //   ))
  //       .toList(),
  // );

  Widget buildRating({required String url}) => Row(
    crossAxisAlignment: CrossAxisAlignment.center,
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text("9"),
      SizedBox(width: 10),
      ...List.generate(
        4,
            (index) => Icon(Icons.star_rate, size: 18, color: Colors.orange),
      ),
    ],
  );
}
