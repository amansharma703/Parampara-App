// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:parampara/constants.dart';
import 'package:parampara/data/tech_event_data.dart';
import 'package:parampara/widget/event_list_card.dart';
import '../services/event_services.dart';
import '../model/event_service_model.dart';

class event_detail_page extends StatefulWidget {
  int index = 0;
  event_detail_page({ Key? key, required this.index });

  @override
  State<event_detail_page> createState() => _event_detail_pageState(pagetype: index);
}

class _event_detail_pageState extends State<event_detail_page> {
  int pagetype=0;
  _event_detail_pageState({ Key? key ,required this.pagetype});

  final Future<EventService> list = event_services().get_data();
//  @override
//  void initState(){
//    super.initState();
//    get_events();
//  }
//
//  get_events() async {
//    list  =  await event_services().get_data();
//  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: secondaryBlue,
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 17.0, vertical: 8),
        child: SingleChildScrollView(
          child:  FutureBuilder<EventService>(
              future: list,
              builder: (context, snapshot) {

                if(snapshot.hasData){
                  return Container(
                    height: MediaQuery.of(context).size.height,
                    child: ListView.builder(
                      itemCount: checkpage(pagetype, snapshot),
                      itemBuilder: (context, index){

                        if(pagetype==0){
                          return event_list_card(event: snapshot.data!.cultural.eventlist[index],);
                        }
                        else if(pagetype==1){
                          return event_list_card(event: snapshot.data!.sport.eventlist[index],);
                        }

                          return event_list_card(event: snapshot.data!.technical.eventlist[index],);


                      },
                    ),
                  );
                }
                return Container(
                    height: MediaQuery.of(context).size.height,
                    child: Center(child: CircularProgressIndicator())
                );

              }
            ),
          
        ),
      ),
    );
  }

  int checkpage(int pagetype, AsyncSnapshot<EventService> snapshot) {
    if(pagetype==0){
      return snapshot.data!.cultural.eventlist.length;
    }
    else if(pagetype==1){
      return snapshot.data!.sport.eventlist.length;
    }
    return snapshot.data!.technical.eventlist.length;
  }
}