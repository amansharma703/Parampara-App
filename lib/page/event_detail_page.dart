import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constants.dart';
import '../model/event_service_model.dart';

class event_detail_page extends StatefulWidget {
  final Eventlist event;
  event_detail_page({ Key? key , required this.event});
  @override
  _event_detail_pageState createState() => _event_detail_pageState(event: event);
}

class _event_detail_pageState extends State<event_detail_page> {
  Eventlist event;
  _event_detail_pageState({ Key? key , required this.event});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: secondaryBlue,
        appBar: AppBar(title: Text(event.title),),
        body: SingleChildScrollView(
          child: Stack(
            children: [



              Center(
                child: Container(
                  child: Image.network(event.imgUrl),
                  height: MediaQuery.of(context).size.height * 0.38,
                ),
              ),

              Container(
                margin: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.33),
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.87,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(12), topRight: Radius.circular(12),),
                  color: Colors.white,
//                  border: Border.all(color: blue, width: 1),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 18.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        child: Text(event.title, style: TextStyle(
                          color: Colors.black87,
                          fontWeight: FontWeight.w800,
                          fontSize: 20,
                        ),),
                      ),

                      SizedBox(height: 15,),
                      Container(height: 1,color: Colors.grey,),
                      SizedBox(height: 15,),
                      Row(
                        children: [
                          Container(
                              child: Icon(Icons.alarm, size: 23, color: Colors.black87,),
                          ),

                          SizedBox(width: 15),

                          Container(
                            child: Text(event.date, style: TextStyle(
                              color: Colors.black87,
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                            ),),
                          ),

                          SizedBox(width: 15),

                          Container(
                            child: Text(event.startTime, style: TextStyle(
                              color: Colors.black87,
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                            ),),
                          ),


                        ],
                      ),
                      SizedBox(height: 15,),
                      Container(height: 1,color: Colors.grey,),
                      SizedBox(height: 15,),

                      Container(
                        child: Text("Event Coordinators", style: TextStyle(
                          color: Colors.black87,
                          fontWeight: FontWeight.w800,
                          fontSize: 16,
                        ),),
                      ),
                      SizedBox(height: 13,),
                      Container(

                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(12)),
                          border: Border.all(width: 1, color: Colors.grey),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Text(event.coordinators, style: TextStyle(
                            color: Colors.black87,
                            fontWeight: FontWeight.w600,
                            fontSize: 14,
                          ),
                        ),),
                      ),

                      SizedBox(height: 13,),

                      Container(
                        child: Text("Contact", style: TextStyle(
                          color: Colors.black87,
                          fontWeight: FontWeight.w800,
                          fontSize: 16,
                        ),),
                      ),
                      SizedBox(height: 13,),
                      Container(

                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(12)),
                          border: Border.all(width: 1, color: Colors.grey),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Text(event.contact, style: TextStyle(
                            color: Colors.black87,
                            fontWeight: FontWeight.w600,
                            fontSize: 14,
                          ),
                          ),),
                      ),

                      SizedBox(height: 13,),
                      Container(height: 1,color: Colors.grey,),
                      SizedBox(height: 13,),
                      Container(
                        child: Text("About", style: TextStyle(
                          color: Colors.black87,
                          fontWeight: FontWeight.w800,
                          fontSize: 16,
                        ),),
                      ),
                      SizedBox(height: 13,),
                      Container(

                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(12)),
//                          border: Border.all(width: 1, color: Colors.grey),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Text(event.desc, style: TextStyle(
                            color: Colors.black87,
                            fontWeight: FontWeight.w600,
                            fontSize: 14,
                          ),
                          ),),
                      ),


                    ],



                  ),
                ),
              ),


            ],
          ),
        ),
    );
  }
}
