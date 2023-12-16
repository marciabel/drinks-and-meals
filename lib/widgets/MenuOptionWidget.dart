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
    double containerWidth = MediaQuery.of(context).size.width * 0.4;

    return GestureDetector(
      onTap: () => onTapAction(),
      child: Container(
        width: containerWidth,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              spreadRadius: 2,
              blurRadius: 5,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: Stack(
          alignment: Alignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
              child: ColorFiltered(
                colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(0.5),
                  BlendMode.darken,
                ),
                child: Image.network(
                  imageUrl,
                  fit: BoxFit.cover,
                  width: containerWidth,
                  height: containerWidth,
                ),
              ),
            ),
            Text(
              text,
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
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
      ),
    );
  }
}
