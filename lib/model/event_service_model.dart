// To parse this JSON data, do
//
//     final eventService = eventServiceFromJson(jsonString);

import 'dart:convert';

EventService eventServiceFromJson(String str) => EventService.fromJson(json.decode(str));

String eventServiceToJson(EventService data) => json.encode(data.toJson());

class EventService {
  EventService({
    required this.sport,
    required this.technical,
    required this.cultural,
  });

  Cultural sport;
  Cultural technical;
  Cultural cultural;

  factory EventService.fromJson(Map<String, dynamic> json) => EventService(
    sport: Cultural.fromJson(json["sport"]),
    technical: Cultural.fromJson(json["technical"]),
    cultural: Cultural.fromJson(json["cultural"]),
  );

  Map<String, dynamic> toJson() => {
    "sport": sport.toJson(),
    "technical": technical.toJson(),
    "cultural": cultural.toJson(),
  };
}

class Cultural {
  Cultural({
    required this.eventicon,
    required this.eventlist,
  });

  String eventicon;
  List<Eventlist> eventlist;

  factory Cultural.fromJson(Map<String, dynamic> json) => Cultural(
    eventicon: json["eventicon"],
    eventlist: List<Eventlist>.from(json["eventlist"].map((x) => Eventlist.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "eventicon": eventicon,
    "eventlist": List<dynamic>.from(eventlist.map((x) => x.toJson())),
  };
}

class Eventlist {
  Eventlist({
    required this.eventbanner,
    required this.contact,
    required this.coordinators,
    required this.date,
    required this.endTime,
    required this.imgUrl,
    required this.startTime,
    required this.title,
    required this.desc,
  });

  String eventbanner;
  String contact;
  String coordinators;
  String date;
  String endTime;
  String imgUrl;
  String startTime;
  String title;
  String desc;

  factory Eventlist.fromJson(Map<String, dynamic> json) => Eventlist(
    eventbanner: json["eventbanner"],
    contact: json["contact"],
    coordinators: json["coordinators"],
    date: json["date"],
    endTime: json["endTime"],
    imgUrl: json["imgUrl"],
    startTime: json["startTime"],
    title: json["title"],
    desc: json["desc"],
  );

  Map<String, dynamic> toJson() => {
    "eventbanner": eventbanner,
    "contact": contact,
    "coordinators": coordinators,
    "date": date,
    "endTime": endTime,
    "imgUrl": imgUrl,
    "startTime": startTime,
    "title": title,
    "desc": desc,
  };
}
