import 'package:flutter/material.dart';

class Feedback {
  final String name, review, userPic;
  final int id;
  final Color color;

  Feedback({
    required this.name,
    required this.review,
    required this.userPic,
    required this.id,
    required this.color,
  });
}

List<Feedback> feedbacks = [
  Feedback(
    name: "Ronald Thompson",
    review: review,
    userPic: "assets/images/people.png",
    id: 1,
    color: const Color(0xFFFFF3DD),
  ),
  Feedback(
    name: "Ronald Thompson",
    review: review,
    userPic: "assets/images/people.png",
    id: 1,
    color: const Color(0xFFD9FFFC),
  ),
  Feedback(
    name: "Ronald Thompson",
    review: review,
    userPic: "assets/images/people.png",
    id: 1,
    color: const Color(0xFFFFE0E0),
  ),
];

String review =
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s.";
