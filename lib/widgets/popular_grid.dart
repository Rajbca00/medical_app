import 'package:flutter/material.dart';

import '../constant.dart';

class PopularGrid extends StatelessWidget {
  const PopularGrid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Popular doctors',
            style: TextStyle(
              fontSize: 24,
            ),
          ),
          Container(
            height: 400,
            child: GridView.count(
              crossAxisCount: 2,
              padding: const EdgeInsets.all(20),
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              children: [
                DoctorCard(
                  image: 'assets/images/man_1.png',
                  name: 'Dr. Chris Frazier',
                  profession: 'Pediatrician',
                  rating: '5.0',
                ),
                DoctorCard(
                  image: 'assets/images/man_2.png',
                  name: 'Dr. Viola Dunn',
                  profession: 'Therapist',
                  rating: '4.0',
                ),
                DoctorCard(
                  image: 'assets/images/man_2.png',
                  name: 'Dr. Charlie Black',
                  profession: 'Cardiologist',
                  rating: '3.8',
                ),
                DoctorCard(
                  image: 'assets/images/man_1.png',
                  name: 'Dr. Chris Frazier',
                  profession: 'Pediatrician',
                  rating: '5.0',
                ),
                DoctorCard(
                  image: 'assets/images/man_2.png',
                  name: 'Dr. Viola Dunn',
                  profession: 'Therapist',
                  rating: '4.0',
                ),
                DoctorCard(
                  image: 'assets/images/man_2.png',
                  name: 'Dr. Charlie Black',
                  profession: 'Cardiologist',
                  rating: '3.8',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class DoctorCard extends StatelessWidget {
  final String image;
  final String name;
  final String profession;
  final String rating;

  DoctorCard(
      {required this.image,
      required this.name,
      required this.profession,
      required this.rating});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
            Container(
              height: 60,
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(35),
                color: bgColor1,
              ),
              child: Image.asset(
                image,
              ),
            ),
            SizedBox(height: 12),
            Text(name),
            Text(
              profession,
              style: TextStyle(color: Colors.grey[600]),
            ),
            Center(
              child: Container(
                width: 70,
                padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                decoration: BoxDecoration(
                    color: bgColorLite,
                    borderRadius: BorderRadius.circular(10)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.star,
                      color: Color(0xAAFFD700),
                    ),
                    SizedBox(width: 5),
                    Text(rating)
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
