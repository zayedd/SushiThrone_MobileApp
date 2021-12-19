import 'package:flutter/material.dart';
import 'dashboard.dart';
import 'settings.dart';
import 'offers.dart';
import 'complaints.dart';
import 'admin_drawer.dart';
import 'drawer_sections.dart';

class AdminHome extends StatefulWidget {
  @override
  _AdminHomeState createState() => _AdminHomeState();
}



class _AdminHomeState extends State<AdminHome> {
  var currentPage = DrawerSections.dashboard;

  @override
  Widget build(BuildContext context) {
    var container;
    if (currentPage == DrawerSections.dashboard) {
      container = DashboardPage();
    } else if (currentPage == DrawerSections.offers) {
      container = OffersPage();
    } else if (currentPage == DrawerSections.settings) {
      container = SettingsPage();
    } else if (currentPage == DrawerSections.complaints) {
      container = ComplaintsPage();
    }
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[700],
        title: Text("Shadow admin"),
      ),
      
    );
  }
}