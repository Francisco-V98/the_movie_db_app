import 'package:flutter/material.dart';
import 'package:the_movie_db_app/widgets/gradient_image.dart';
import 'dart:ui';
import 'package:the_movie_db_app/widgets/header_appbar.dart';
import 'package:the_movie_db_app/widgets/movie_info.dart';
import 'package:the_movie_db_app/widgets/principal_image.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 43, 43, 43),
      body: Stack(
        children: [
          Column(
            children: [
              const Stack(
                children: [
                  PrincipalImage(),
                  GradientImage(),
                  HeaderAppBar(),
                ],
              ),
              const SizedBox(height: 30),
              Expanded(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                       const MovieInfo(),
                        const SizedBox(height: 10),
                        const Text(
                          'A criminal mastermind who goes by "The Professor" has a plan to pull off the biggest heist in recorded history -- to print billions of euros in the Royal Mint of Spain...',
                          style: TextStyle(
                              color: Color.fromARGB(255, 187, 187, 187)),
                        ),
                        const SizedBox(height: 20),
                        const Text(
                          'Cast & Crew',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        SizedBox(
                          height: 120,
                          child: ListView.builder(
                            itemCount: 6,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (BuildContext context, int index) {
                              return Row(
                                children: [
                                  Container(
                                    width: 100,
                                    height: 160,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    child: Stack(
                                      children: [
                                        ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(8),
                                          child: Image.network(
                                            'https://media.istockphoto.com/id/1289461335/photo/portrait-of-a-handsome-black-man.jpg?s=612x612&w=0&k=20&c=gDibbpmkeV04ta3ociwAgpqcjdeU5sI1nnd78wrnz-g=',
                                            fit: BoxFit.cover,
                                            width: 100,
                                            height: 160,
                                          ),
                                        ),
                                        Positioned(
                                          bottom: 0,
                                          child: Container(
                                            width: 100,
                                            height: 32,
                                            decoration: BoxDecoration(
                                              color:
                                                  Colors.black.withOpacity(0.7),
                                              borderRadius:
                                                  const BorderRadius.vertical(
                                                bottom: Radius.circular(8),
                                              ),
                                            ),
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 8),
                                              child: Row(
                                                children: [
                                                  Text(
                                                    'Name'.toLowerCase(),
                                                    style: const TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 12,
                                                    ),
                                                  ),
                                                  const SizedBox(width: 16),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(width: 8),
                                ],
                              );
                            },
                          ),
                        ),
                        const SizedBox(height: 40),
                        Row(
                          children: [
                            Container(
                              width: 100,
                              height: 160,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Stack(
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(8),
                                    child: Image.network(
                                      'https://media.istockphoto.com/id/1289461335/photo/portrait-of-a-handsome-black-man.jpg?s=612x612&w=0&k=20&c=gDibbpmkeV04ta3ociwAgpqcjdeU5sI1nnd78wrnz-g=',
                                      fit: BoxFit.cover,
                                      width: 100,
                                      height: 160,
                                    ),
                                  ),
                                  Positioned(
                                    bottom: 0,
                                    child: Container(
                                      width: 100,
                                      height: 32,
                                      decoration: BoxDecoration(
                                        color: Colors.black.withOpacity(0.7),
                                        borderRadius:
                                            const BorderRadius.vertical(
                                          bottom: Radius.circular(8),
                                        ),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 8),
                                        child: Row(
                                          children: [
                                            Text(
                                              'Name'.toLowerCase(),
                                              style: const TextStyle(
                                                color: Colors.white,
                                                fontSize: 12,
                                              ),
                                            ),
                                            const SizedBox(width: 16),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(width: 20),
                            const Column(
                              children: [
                                Text(
                                  'Director',
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text('Alex Pina'),
                              ],
                            ),
                            const SizedBox(height: 10),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          Positioned(
            top: 925,
            bottom: 30,
            left: 75,
            right: 75,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(32),
                color: const Color.fromARGB(255, 87, 87, 87).withOpacity(0.6),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(32),
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Overview",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                      SizedBox(
                        width: 25,
                      ),
                      Text(
                        "Seasons",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                      SizedBox(width: 25),
                      Text(
                        "Similar",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: 360,
            left: 16,
            right: 16,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 2.0),
              child: Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(32),
                  color: const Color.fromARGB(255, 75, 75, 75).withOpacity(0.6),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 9, sigmaY: 8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        _buildBlurredIconButton(Icons.ios_share),
                        _buildBlurredIconButton(Icons.thumb_up),
                        _buildBlurredIconButton(Icons.play_arrow),
                        _buildBlurredIconButton(Icons.download_sharp)
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildBlurredIconButton(IconData iconData) {
    return Padding(
      padding: const EdgeInsets.only(top: 2.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.black54,
          borderRadius: BorderRadius.circular(30),
          border: Border.all(
              color: const Color.fromARGB(255, 190, 13, 0), width: 2),
        ),
        child: IconButton(
          icon: Icon(iconData, color: Colors.white),
          onPressed: () {},
        ),
      ),
    );
  }
}





