import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:nemsu_gts/components/Container/Dashboard%20Container/drawer_components.dart';
import 'package:nemsu_gts/components/Container/Dashboard%20Container/drawer_header.dart';

class MyDashboard extends StatelessWidget {
  const MyDashboard({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(13, 110, 253, 1),
        iconTheme: IconThemeData(color: Colors.white), // Change icon color here
      ),
      drawer: Drawer(
        child: Container(
            color: const Color.fromRGBO(13, 110, 253, 1),
            child: ListView(
              children:  [
                DrawerHeader(
                  decoration: BoxDecoration(
                  color: Color.fromRGBO(13, 110, 253, 1),
                  border: Border.all(color: Color.fromRGBO(13, 110, 253, 1))
                ),
                  child: TDrawerHeader(),
                      
                  ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25.0, vertical: 10),
                  child: Column(
                    children: [
                      TDrawerComponents(
                        menuTitle: "MENU",
                        menu1: "My Response",
                        menu2: "Job Postings",
                        menu3: "Announcements"
                      ),
                      SizedBox(height: 30,),
                      TDrawerComponents(
                        menuTitle: "MENU",
                        menu1: "My Response",
                        menu2: "Job Postings",
                        menu3: "Announcements"
                      ),
                    ],
                  ),
                  
                )  
              ],
              
            ),
        ),
      ),
    );
  }
}
