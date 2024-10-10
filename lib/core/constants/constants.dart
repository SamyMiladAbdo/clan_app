import 'package:flutter/material.dart';

double defaultPadding = 25;
double defaultRadius = 12.0;

final String accessToken =
    "Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNzI4NTAzMTk2LCJpYXQiOjE3Mjc4OTgzOTYsImp0aSI6ImU0YjQxN2I5YTQ0YTQ1NzY4NTZhYjllNmRlYjdhMDkwIiwidXNlcl9pZCI6MTY3MX0.A9Zb0Q3KpclmwgTG95ULZBKaInIOffvRCj8AFARQ26o";
List<BoxShadow> defaultBoxShadow = [
  BoxShadow(
    color: Colors.black.withOpacity(0.05), // Shadow color
    spreadRadius: 0,
    blurRadius: 8,
    offset: const Offset(0, 2), // Shadow position
  ),
];
