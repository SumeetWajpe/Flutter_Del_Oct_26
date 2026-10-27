import 'package:flutter/material.dart';

class Rating extends StatelessWidget {
  final int rating;
  final int maxStars;
  final double size;
  final Color color;

  const Rating({
    super.key,
    required this.rating,
    this.maxStars = 5,
    this.size = 24.0,
    this.color = Colors.amber,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: List.generate(maxStars, (index) {
        IconData iconData;
        if (rating >= index + 1) {
          iconData = Icons.star; // FullStar
        } else if (rating > index && rating < index + 1) {
          iconData = Icons.star_half;
        } else {
          iconData = Icons.star_border;
        }
        return Icon(iconData, size: size, color: color);
      }),
    );
  }
}
