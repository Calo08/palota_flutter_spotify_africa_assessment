import 'package:flutter/material.dart';
import 'package:flutter_spotify_africa_assessment/colors.dart';
import 'package:flutter_spotify_africa_assessment/routes.dart';

// TODO: fetch and populate playlist info and allow for click-through to detail
// Feel free to change this to a stateful widget if necessary
import 'dart:convert';

Welcome welcomeFromJson(String str) => Welcome.fromJson(json.decode(str));

String welcomeToJson(Welcome data) => json.encode(data.toJson());

class Welcome {
    String href;
    List<Icon> icons;
    String id;
    String name;

    Welcome({
        required this.href,
        required this.icons,
        required this.id,
        required this.name,
    });

    factory Welcome.fromJson(Map<String, dynamic> json) => Welcome(
        href: json["href"],
        icons: List<Icon>.from(json["icons"].map((x) => Icon.fromJson(x))),
        id: json["id"],
        name: json["name"],
    );

    Map<String, dynamic> toJson() => {
        "href": href,
        "icons": List<dynamic>.from(icons.map((x) => x.toJson())),
        "id": id,
        "name": name,
    };
}

class Icon {
    String url;
    dynamic height;
    dynamic width;

    Icon({
        required this.url,
        this.height,
        this.width,
    });

    factory Icon.fromJson(Map<String, dynamic> json) => Icon(
        url: json["url"],
        height: json["height"],
        width: json["width"],
    );

    Map<String, dynamic> toJson() => {
        "url": url,
        "height": height,
        "width": width,
    };
}

