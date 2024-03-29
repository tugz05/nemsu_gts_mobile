import 'package:flutter/material.dart';
import 'package:nemsu_gts/pages/Dashboard/components/appbar.dart';
import 'package:nemsu_gts/pages/Dashboard/components/drawer.dart';

class JobPostings extends StatelessWidget {
  const JobPostings({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(

      body: Center(
        child: Text(
          'Job Postings',
        ),
      ),
    );
  }
}