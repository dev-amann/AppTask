import 'package:flutter/material.dart';

import '../../utils/strings/custom_strings.dart';

class CourseScreen extends StatefulWidget {
  const CourseScreen({Key? key}) : super(key: key);

  @override
  State<CourseScreen> createState() => _CourseScreenState();
}

class _CourseScreenState extends State<CourseScreen> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(Str.courses),
    );
  }
}
