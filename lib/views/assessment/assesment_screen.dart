import 'package:flutter/material.dart';

import '../../utils/strings/custom_strings.dart';

class AssessmentScreen extends StatefulWidget {
  const AssessmentScreen({Key? key}) : super(key: key);

  @override
  State<AssessmentScreen> createState() => _AssessmentScreenState();
}

class _AssessmentScreenState extends State<AssessmentScreen> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(Str.assessment),
    );
  }
}
