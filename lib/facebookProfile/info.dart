import 'package:flutter/material.dart';

class Info {
  Widget? icon;
  String? normalText;
  String? boldText;

  Info({
    this.icon,
    this.normalText,
    this.boldText,
  });
}

//[1,2,3,4,5,6,7,8,9]
List<Info> info = [
  Info(
    icon: const Icon(
      Icons.work,
      color: Colors.white,
    ),
    normalText: 'Studying department of IT at ',
    boldText: 'Altinbas University, Istanbul',
  ),
  Info(
    icon: const Icon(
      Icons.work,
      color: Colors.white,
    ),
    normalText: 'Studying department of IT at ',
    boldText: 'Altinbas University, Istanbul',
  ),
  Info(
    icon: const Icon(
      Icons.school,
      color: Colors.white,
    ),
    normalText: 'Studied at ',
    boldText: 'Software Engineerin, Mosul',
  ),
  Info(
    icon: const Icon(
      Icons.favorite,
      color: Colors.white,
    ),
    normalText: 'Single',
    boldText: '',
  ),
  Info(
    icon: const Icon(
      Icons.link,
      color: Colors.white,
    ),
    normalText: 'muayadmohammed.rf.gd',
    boldText: '',
  ),
  Info(
    icon: const Icon(
      Icons.more_horiz,
      color: Colors.white,
    ),
    normalText: 'See your About info',
  ),
  Info(
    icon: const Icon(
      Icons.more_horiz,
      color: Colors.white,
    ),
    normalText: 'See your About info1',
  ),
  Info(
    icon: const Icon(
      Icons.more_horiz,
      color: Colors.white,
    ),
    normalText: 'See your About info2',
  ),
];
