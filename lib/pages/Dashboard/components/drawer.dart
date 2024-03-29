import 'package:flutter/material.dart';
import '../../../components/Container/Dashboard Container/drawer_header.dart';
import 'package:nemsu_gts/components/Container/Dashboard Container/drawer_components.dart';

import '../announcements.dart';
import '../job_postings.dart';
import '../my_response.dart';


class TMyDrawer extends StatelessWidget {
  final Function(Widget) onMenuItemSelected;

  const TMyDrawer({
    Key? key,
    required this.onMenuItemSelected,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: const Color.fromRGBO(13, 110, 253, 1),
        child: ListView(
          children: [
            Container(
              decoration: BoxDecoration(
                color: const Color.fromRGBO(13, 110, 253, 1),
                border: Border.all(color: const Color.fromRGBO(13, 110, 253, 1)),
              ),
              child: const TDrawerHeader(),
            ),
            const SizedBox(height: 20),
             Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.0, vertical: 10),
              child: Column(
                children: [
                  TDrawerComponents(
                    menuTitle: "MENU",
                    menu1: "My Response",
                    menu2: "Job Postings",
                    menu3: "Announcements",
                    onTapMenu1: () {
                      onMenuItemSelected(MyResponse());
                    },
                    onTapMenu2: () {
                      onMenuItemSelected(JobPostings());
                    },
                    onTapMenu3: () {
                      onMenuItemSelected(Announcements());
                    },
                  ),
                  SizedBox(height: 30),
                  TDrawerComponents(
                    menuTitle: "OTHERS",
                    menu1: "Settings",
                    
                    menu2: "My Account",
                    menu3: "Logout",
                    onTapMenu1: () {
                      // Handle Settings
                    },
                    onTapMenu2: () {
                      // Handle My Account
                    },
                    onTapMenu3: () {
                      // Handle Logout
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
