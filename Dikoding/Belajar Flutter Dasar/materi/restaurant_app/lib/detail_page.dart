import 'package:flutter/material.dart';
import 'package:restaurant_app/restaurant.dart';

class DetailPage extends StatelessWidget {
  final Restaurant restaurant;

  const DetailPage({super.key, required this.restaurant});

  static const routeName = '/detailRestaurant';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _detailPicture(restaurant.pictureId, context),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _detailRestaurantName(restaurant.name, context),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        _detailRating(restaurant.rating, context),
                        const SizedBox(width: 15),
                        _detailCity(restaurant.city, context),
                      ],
                    ),
                    _detailDeskripsi(restaurant.description, context),
                    if (restaurant.menus.foods.isEmpty)
                      _detailFood(restaurant.menus.foods, context),
                    const SizedBox(height: 18),
                    if (restaurant.menus.drinks.isNotEmpty)
                      _detailDrinks(restaurant.menus.drinks, context),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _detailPicture(String pictureId, BuildContext context) {
    return Stack(
      children: [
        Hero(
          tag: pictureId,
          child: Image.network(
            pictureId,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(4),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: Colors.black12,
            ),
            height: 40,
            width: 40,
            child: IconButton(
              icon: Icon(
                Icons.arrow_back,
                color: Theme.of(context).colorScheme.primary,
              ),
              onPressed: () => Navigator.pop(context),
            ),
          ),
        ),
      ],
    );
  }

  Widget _detailRestaurantName(String restaurantName, BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Theme.of(context).colorScheme.background,
          ),
        ),
      ),
      child: Text(
        '$restaurantName kentot',
        style: Theme.of(context).textTheme.displayMedium,
      ),
    );
  }

  Widget _detailRating(double rating, BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: Row(
        children: [
          Icon(
            Icons.star,
            color: Theme.of(context).colorScheme.onSecondary,
          ),
          const SizedBox(width: 3),
          Text(
            "$rating/5",
            style: Theme.of(context).textTheme.titleSmall,
          ),
        ],
      ),
    );
  }

  // Widget _detailFavorite
  Widget _detailCity(String city, BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.location_pin,
          color: Theme.of(context).colorScheme.onSecondary,
        ),
        const SizedBox(width: 3),
        Text(
          city,
          style: Theme.of(context).textTheme.titleSmall,
        ),
      ],
    );
  }

  Widget _detailDeskripsi(String description, BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Text(
        description,
        style: Theme.of(context).textTheme.bodyMedium,
        textAlign: TextAlign.justify,
      ),
    );
  }

  Widget _detailFood(List<Category> foods, BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: Theme.of(context).colorScheme.background,
                ),
              ),
            ),
            child: Text(
              "Foods",
              style: Theme.of(context).textTheme.headlineSmall,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: List.generate(
              foods.length,
              (index) {
                int number = index + 1;
                return Padding(
                  padding: const EdgeInsets.only(top: 16),
                  child: Text(
                    '$number. ${foods[index].name}',
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _detailDrinks(List<Category> drinks, BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: Theme.of(context).colorScheme.background,
                ),
              ),
            ),
            child: Text(
              "Drinks",
              style: Theme.of(context).textTheme.headlineSmall,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: List.generate(
              drinks.length,
              (index) {
                int number = index + 1;
                return Padding(
                  padding: const EdgeInsets.only(top: 16),
                  child: Text(
                    '$number. ${drinks[index].name}',
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
