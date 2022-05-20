import 'package:flutter/widgets.dart';
import 'package:parampara/constants.dart';
import 'package:flutter/material.dart';
import 'package:parampara/model/event_model.dart';
import 'package:parampara/model/event_service_model.dart';
import 'package:parampara/page/event_detail_page.dart';
import '../constants.dart';
import 'package:parampara/data/tech_event_data.dart';

class event_list_card extends StatelessWidget {

  final Eventlist event;
  const event_list_card({ Key? key , required this.event}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) =>  event_detail_page(event: event,)),
        );
      },
      child: Container(
        height: 90,
        margin: EdgeInsets.symmetric(vertical: 8),
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(8)),
          border: Border.all(color: blue, width: 1),
          color: secondaryLightBlue,

        ),
        child: Row(
          children: [
            Container(
              height: 120,
              width: 70,
              margin: EdgeInsets.symmetric(vertical: 7),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child:Stack(
                  children:[
                    Center(child: Container( height: 12, width: 12,child: CircularProgressIndicator())),
                    Center(child: Image.network(event.imgUrl, fit: BoxFit.cover,)),
                  ]),
              ),
            ),

            SizedBox(width: 20,),

            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [Padding(
                  padding: const EdgeInsets.symmetric(vertical: 12),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                        event.title,
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                          color: Colors.white,
                        ),
                      ),
                  ),
                ),

                  Container(
//                   color: Colors.red,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
//                      Icon(Icons.lock_clock_rounded ,size: 18, color: Colors.white70,),
                        Container(
                            height: 12,
                            width: 12,
                            child: Image.asset("assets/calender.png")),

                        SizedBox(width: 10,),
                        Text(
                          event.date,
                          style: TextStyle(
                            fontSize: 13,
                            color: Colors.white70,
                          ),
                        ),

                        Spacer(),

                        Padding(
                          padding: const EdgeInsets.only (right: 17.0),
                          child: Icon(Icons.arrow_forward_ios, size: 14, color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ],

              ),
            ),

          ],
        ),
      ),
    );
  }
}