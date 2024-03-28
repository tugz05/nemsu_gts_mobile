import 'package:flutter/material.dart';
import 'package:nemsu_gts/pages/Dashboard/components/appbar.dart';
import 'package:nemsu_gts/pages/Dashboard/components/drawer.dart';

class Announcements extends StatelessWidget {
  const Announcements({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: TMyAppBar(),
      drawer: TMyDrawer(),
      body: Center(
        child: Text(
          'My Response',
        ),
      ),
    );
  }
}