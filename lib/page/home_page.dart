import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:parampara/model/movie.dart';
import 'package:parampara/services/movies.dart';
import '../data/movies.dart';
import '../widget/background_widget.dart';
import '../widget/buy_button_widget.dart';
import '../widget/movie_card_widget.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final controller = PageController();

  final Future<Movie> list = gall_service().get_data();
  List<Movie> movies= [];
  @override
  Widget build(BuildContext context) => Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          leading: Icon(Icons.close),
          actions: [Icon(Icons.person_outline), SizedBox(width: 15)],
        ),
        body: FutureBuilder<Movie>(
          future: list,
          builder: (context, snapshot) {
            print(snapshot.hasData);
            if(snapshot.hasData){

              Movie movie = snapshot.data!;
              List<Movie> list2= [];
              List<String> listurl = [];
              for(int i =  0 ; i<movie.cultural.eventlist.length; i++){
                  listurl.add(movie.cultural.eventlist[i].imgUrl);
              }
              list2.add(movie);
              
              print(snapshot.data);
              return carousel(controller: controller, urls: listurl);
            }

            // return CircularProgressIndicator();
            return Center(child: CircularProgressIndicator());
          }
        ),
      );
}

class carousel extends StatelessWidget {
  const carousel({
    Key? key,
    required this.controller,
    required this.urls,
  }) : super(key: key);

  final PageController controller;
  final List<String> urls;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        BackgroundWidget(controller: controller, urls: urls,),
        Align(
          alignment: Alignment.bottomCenter,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              CarouselSlider(
                items:
                    urls.map((e) => MovieCardWidget(url: e)).toList(),
                options: CarouselOptions(
                  enableInfiniteScroll: false,
                  viewportFraction: 0.75,
                  height: MediaQuery.of(context).size.height * 0.7,
                  enlargeCenterPage: true,
                  onPageChanged: (index, _) => controller.animateToPage(
                    index,
                    duration: Duration(seconds: 1),
                    curve: Curves.ease,
                  ),
                ),
              ),
              BuyButtonWidget(),
              SizedBox(height: 20),
            ],
          ),
        ),
      ],
    );
  }
}
