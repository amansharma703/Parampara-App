// To parse this JSON data, do
//
//     final galleryService = galleryServiceFromJson(jsonString);

import 'dart:convert';

GalleryService galleryServiceFromJson(String str) => GalleryService.fromJson(json.decode(str));

String galleryServiceToJson(GalleryService data) => json.encode(data.toJson());

class GalleryService {
  GalleryService({
    required this.photoes,
  });

  List<Photoes> photoes;

  factory GalleryService.fromJson(Map<String, dynamic> json) => GalleryService(
    photoes: List<Photoes>.from(json["photoes"].map((x) => Photoes.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "photoes": List<dynamic>.from(photoes.map((x) => x.toJson())),
  };
}

class Photoes {
  Photoes({
    required this.img,
    required this.title,
    required this.desc,
  });

  String img;
  String title;
  String desc;

  factory Photoes.fromJson(Map<String, dynamic> json) => Photoes(
    img: json["img"],
    title: json["title"],
    desc: json["desc"],
  );

  Map<String, dynamic> toJson() => {
    "img": img,
    "title": title,
    "desc": desc,
  };
}
