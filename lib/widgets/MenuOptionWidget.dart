import 'package:flutter/material.dart';

class MenuOptionWidget extends StatelessWidget {
  final String imageUrl;
  final String text;
  final Function onTapAction;

  MenuOptionWidget({
    required this.imageUrl,
    required this.text,
    required this.onTapAction,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
<<<<<<< HEAD
<<<<<<< HEAD
      onTap: () => {onTapAction},
=======
      onTap: () => onTapAction(),
>>>>>>> 00fd719 (Home screen. Screen for meal lists. Meal card widget)
=======
      onTap: () => onTapAction(),
>>>>>>> 00fd719e7e9201cc4291623a7a298c1a990caa49
      child: Stack(
        alignment: Alignment.center,
        children: [
          Image.network(
            imageUrl,
            fit: BoxFit.cover,
            width: 150,
          ),
          Text(
            text,
            style: TextStyle(
              fontSize: 24.0,
              color: Colors.white,
              shadows: [
                Shadow(
                  offset: Offset(0.0, 1.0),
                  blurRadius: 3.0,
                  color: Colors.black,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
