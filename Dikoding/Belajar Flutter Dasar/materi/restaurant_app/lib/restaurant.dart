// ignore_for_file: unused_import, avoid_print

import 'dart:convert';
import 'dart:developer';

class ListRestaurants {
  // list restaurant hanya mngembalikan list
  final List<Restaurant> restaurants;

  ListRestaurants({required this.restaurants});

  factory ListRestaurants.fromJson(Map<String, dynamic> json) {
    // print(json);
    return ListRestaurants(
      restaurants: List<Restaurant>.from(
        json["restaurants"].map((x) {
          print(x); //akan menampilkan data setiap restaurant
          print('Kontoy---------------------------');

          return Restaurant.fromJson(x);
        }),
      ),
    );
  }

  static ListRestaurants parse(String? json) {
    if (json == null) {
      return ListRestaurants(restaurants: []);
    }

    final parsed = jsonDecode(json);

    return ListRestaurants.fromJson(parsed);
  }
}

class Restaurant {
  String id;
  String name;
  String description;
  String city;
  String pictureId;
  Menus menus;
  double rating;

  Restaurant({
    required this.id,
    required this.name,
    required this.description,
    required this.city,
    required this.pictureId,
    required this.menus,
    required this.rating,
  });

  factory Restaurant.fromJson(Map<String, dynamic> json) => Restaurant(
        id: json["id"],
        name: json["name"],
        description: json["description"],
        city: json["city"],
        pictureId: json["pictureId"],
        menus: Menus.fromJson(json["menus"]),
        rating: json["rating"].toDouble(),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "description": description,
        "city": city,
        "pictureId": pictureId,
        "menus": menus.toJson(),
        "rating": rating,
      };

  static List<Restaurant> parse(String? json) {
    if (json == null) {
      return [];
    }

    final List parsed = jsonDecode(json);
    return parsed.map((json) => Restaurant.fromJson(json)).toList();
  }
}

class Category {
  Category({
    required this.name,
  });

  String name;

  factory Category.fromJson(Map<String, dynamic> json) => Category(
        name: json["name"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
      };
}

class CustomerReview {
  CustomerReview({
    required this.name,
    required this.review,
    required this.date,
  });

  String name;
  String review;
  String date;

  factory CustomerReview.fromJson(Map<String, dynamic> json) => CustomerReview(
        name: json["name"],
        review: json["review"],
        date: json["date"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "review": review,
        "date": date,
      };
}

class Menus {
  Menus({
    required this.foods,
    required this.drinks,
  });

  List<Category> foods;
  List<Category> drinks;

  factory Menus.fromJson(Map<String, dynamic> json) => Menus(
        foods:
            List<Category>.from(json["foods"].map((x) => Category.fromJson(x))),
        drinks: List<Category>.from(
            json["drinks"].map((x) => Category.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "foods": List<dynamic>.from(foods.map((x) => x.toJson())),
        "drinks": List<dynamic>.from(drinks.map((x) => x.toJson())),
      };
}
