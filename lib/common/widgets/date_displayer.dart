import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DateDisplayer extends StatelessWidget {
  const DateDisplayer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final DateTime _dateTime = DateTime.now();
    return Text.rich(
      TextSpan(
        children: [
          TextSpan(
            text: DateFormat.d().format(_dateTime),
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30.0,
              color: Colors.red,
            ),
          ),
          TextSpan(
            text: '-' + DateFormat.MMM().format(_dateTime),
            style: const TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 22.0,
              color: Colors.red,
            ),
          ),
          TextSpan(
            text: '-' + DateFormat.y().format(_dateTime),
            style: const TextStyle(
              fontWeight: FontWeight.w300,
              fontSize: 14.0,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
