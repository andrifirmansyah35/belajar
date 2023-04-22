import 'package:flutter/material.dart';
import 'package:restaurant_app/detail_page.dart';
import 'package:restaurant_app/restaurant.dart';
import 'package:restaurant_app/restaurant_card.dart';
// import 'dart:developer';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  static const routeName = '/homePage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Restaurant App'),
      ),
      body: FutureBuilder<String>(
        future: DefaultAssetBundle.of(context).loadString(
          'assets/restaurants.json',
        ),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            // print(snapshot.data);
            final list = ListRestaurants.parse(snapshot.data);
            return ListView.builder(
              itemCount: list.restaurants.length,
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    Navigator.pushNamed(
                      context,
                      DetailPage.routeName,
                      arguments: list.restaurants[index],
                    );
                  },
                  child: RestaurantCard(
                    restaurant: list.restaurants[index],
                  ),
                );
              },
            );
          }

          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          return const SizedBox();
        },
      ),
    );
  }
}
