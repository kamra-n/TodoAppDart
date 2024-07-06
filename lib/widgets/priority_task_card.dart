import 'package:flutter/material.dart';

class PriorityTaskCard extends StatelessWidget {
  final String time;
  final String description;
  final String title;
  const PriorityTaskCard(
      {super.key,
      required this.time,
      required this.description,
      required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8.0),
      height: 190.0,
      width: 150.0,
      constraints: const BoxConstraints(maxWidth: 160.0),
      decoration: const BoxDecoration(
          color: Color(0XFFA6A6A6),
          borderRadius: BorderRadius.all(Radius.circular(26.0))),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Align(
              alignment: Alignment.topRight,
              child: Icon(
                Icons.camera_alt_outlined,
                color: Colors.white,
              ),
            ),
            Text(
              time,
              style: const TextStyle(
                  fontSize: 14.0,
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                  height: 1.5),
            ),
            const SizedBox(
              height: 5.0,
            ),
            Text(title,
                style: const TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                    height: 1.4)),
            const SizedBox(
              height: 3.0,
            ),
            Text(description,
                style: const TextStyle(
                    fontSize: 14.0,
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                    height: 1.5)),
          ],
        ),
      ),
    );
  }
}
