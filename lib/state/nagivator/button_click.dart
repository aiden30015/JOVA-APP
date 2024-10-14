import 'package:flutter/material.dart';
import '../../screens/joboffer_screen.dart';
import '../../screens/jobsearch_screen.dart';
import '../../screens/myprofile_screen.dart';

class ButtonActions {
  static void jobSerachButton(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const JobsearchScreen()),
    );
  }

  static void jobOfferButton(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const JobofferScreen()),
    );
  }

  static void myprofileButton(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const MyprofileScreen()),
    );
  }
}
