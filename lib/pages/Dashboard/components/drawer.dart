import 'package:flutter/material.dart';
import 'package:nemsu_gts/pages/Dashboard/my_dashboard.dart';

import '../../../components/Container/Dashboard Container/drawer_components.dart';
import '../../../components/Container/Dashboard Container/drawer_header.dart';

class TMyDrawer extends StatelessWidget {
 
  const TMyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Container(
          color: const Color.fromRGBO(13, 110, 253, 1),
          child: ListView(
            children:  [
              Container(
                decoration: BoxDecoration(
                  color: Color.fromRGBO(13, 110, 253, 1),
                  border: Border.all(color: Color.fromRGBO(13, 110, 253, 1)),
                ),
                child: TDrawerHeader(),
              ),
              SizedBox(height: 20,),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 25.0, vertical: 10),
                child: Column(
                  children: [
                    TDrawerComponents(
                      menuTitle: "MENU",
                      menu1: "My Response",
                      menu2: "Job Postings",
                      menu3: "Announcements",
                    ),
                    SizedBox(height: 30,),
                    TDrawerComponents(
                      menuTitle: "OTHERS",
                      menu1: "Settings",
                      menu2: "My Account",
                      menu3: "Logout",
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