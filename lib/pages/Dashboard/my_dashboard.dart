// MyDashboard.dart
import 'package:flutter/material.dart';
import 'components/appbar.dart';
import 'components/drawer.dart';
import 'my_response.dart';


class MyDashboard extends StatefulWidget {
  const MyDashboard({Key? key}) : super(key: key);

  @override
  _MyDashboardState createState() => _MyDashboardState();
}

class _MyDashboardState extends State<MyDashboard> {
  Widget _currentPage = MyResponse();

  void _onMenuItemSelected(Widget page) {
    setState(() {
      _currentPage = page;
    });
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TMyAppBar(),
      drawer: TMyDrawer(
        onMenuItemSelected: _onMenuItemSelected,
      ),
      body: _currentPage,
    );
  }
}
