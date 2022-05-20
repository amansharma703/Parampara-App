// class Movie {
//   String? performerName;
//   String? imageUrl;
//   String? stars;
//   List<String>? genres;
//   String? rating;

//   Movie(
//       {this.performerName,
//       this.imageUrl,
//       this.stars,
//       this.genres,
//       this.rating});

//   Movie.fromJson(Map<String, String> json) {
//     print(json.toString());
//     performerName = json['performer_name'];
//     imageUrl = json['imageUrl'];
//     stars = json['stars'];
//     genres = [".."];
//     rating = json['rating'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, String> data = new Map<String, String>();
//     data['performer_name'] = this.performerName.toString();
//     data['imageUrl'] = this.imageUrl.toString();
//     data['stars'] = this.stars.toString();
//     data['genres'] = this.genres.toString();
//     data['rating'] = this.rating.toString();
//     return data;
//   }
// }


// To parse this JSON data, do
//
//     final movie = movieFromJson(jsonString);

import 'dart:convert';

Movie movieFromJson(String str) => Movie.fromJson(json.decode(str));

String movieToJson(Movie data) => json.encode(data.toJson());

class Movie {
    Movie({
        required this.sport,
        required this.technical,
        required this.cultural,
    });

    Cultural sport;
    Cultural technical;
    Cultural cultural;

    factory Movie.fromJson(Map<String, dynamic> json) => Movie(
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
