import 'package:flutter/material.dart';
import 'package:restaurant_app/restaurant.dart';

class RestaurantCard extends StatelessWidget {
  const RestaurantCard({
    Key? key,
    required this.restaurant,
  }) : super(key: key);

  final Restaurant restaurant;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Theme.of(context).colorScheme.primary,
      shadowColor: Theme.of(context).colorScheme.secondary,
      child: Container(
        padding: const EdgeInsets.fromLTRB(16, 12, 16, 12),
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.surface,
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(48), bottomRight: Radius.circular(48)),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Expanded(
              flex: 4,
              child: Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(0),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Hero(
                    tag: restaurant.pictureId,
                    child: Image.network(
                      restaurant.pictureId,
                      fit: BoxFit.fill,
                      height: 120,
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 8,
              child: Container(
                padding: const EdgeInsets.fromLTRB(8, 8, 12, 8),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      restaurant.name,
                      style: Theme.of(context)
                          .textTheme
                          .headlineSmall!
                          .copyWith(
                            color: Theme.of(context).colorScheme.onSecondary,
                          ),
                    ),
                    Text(
                      restaurant.description,
                      style: Theme.of(context).textTheme.titleMedium!.copyWith(
                            fontStyle: FontStyle.italic,
                          ),
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                    ),
                    const SizedBox(height: 16),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.location_pin,
                              color: Theme.of(context).colorScheme.onSecondary,
                            ),
                            const SizedBox(width: 6),
                            Text(
                              restaurant.city,
                              style: Theme.of(context).textTheme.titleSmall,
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.star,
                              color: Theme.of(context).colorScheme.onSecondary,
                            ),
                            const SizedBox(width: 6),
                            Text(
                              "${restaurant.rating} / 5",
                              style: Theme.of(context).textTheme.titleSmall,
                            ),
                          ],
                        ),
                      ],
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
