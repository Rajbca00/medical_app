import 'package:flutter/material.dart';
import 'package:medical_app_ui/widgets/bottom_navigation.dart';
import 'package:medical_app_ui/widgets/get_symptoms.dart';
import 'package:medical_app_ui/widgets/popular_grid.dart';
import 'package:medical_app_ui/widgets/title_bar.dart';
import 'package:medical_app_ui/widgets/toogle_options.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  static const routeName = '/home-screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigation(),
      backgroundColor: Colors.grey[100],
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 50, horizontal: 20),
            child: Column(
              children: [
                TitleBar(),
                ToogleOptionCard(),
                SizedBox(
                  height: 30,
                ),
                GetSymptoms(),
                SizedBox(
                  height: 20,
                ),
                PopularGrid(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
