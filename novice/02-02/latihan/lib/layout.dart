import 'package:flutter/material.dart';

void main() {
  runApp(
    Center(
      child: Text(
        'Hello, world!',
        textDirection: TextDirection.ltr,
      ),
    ),
    Icon(
      Icons.star,
      color: Colors.red[500],
    ),
    Image.asset(
      'images/lake.jpg',
      fit: BoxFit.cover,
    ),
  );
}