import 'package:flutter/material.dart';
import "package:the_movie_db_app/widgets/widgets.dart";

class DetailScreen extends StatelessWidget {
  final int id;
  const DetailScreen({super.key, required this.id});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color.fromARGB(255, 43, 43, 43),
      body: Stack(
        children: [
          Column(
            children: [
              Stack(
                children: [
                  PrincipalImage(),
                  GradientImage(),
                  HeaderAppBar(),
                ],
              ),
              SizedBox(height: 30),
              Expanded(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        MovieInfo(),
                        SizedBox(height: 10),
                        MovieDescription(),
                        SizedBox(height: 20),
                        Text(
                          'Cast & Crew',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        SizedBox(
                          height: 120,
                          child: CastAndCrewCard(),
                        ),
                        SizedBox(height: 40),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
           FakeNavBar(),
          RowIconHeader(),
        ],
      ),
    );
  }
}