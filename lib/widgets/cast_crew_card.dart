
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:the_movie_db_app/infrastructure/models/credits_model.dart';
import 'package:the_movie_db_app/widgets/widgets.dart';

class CastAndCrewCard extends StatelessWidget {
  final List<Cast>? castList;

  const CastAndCrewCard({
    Key? key,
    this.castList,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: castList?.length ?? 0,
      scrollDirection: Axis.horizontal,
      itemBuilder: (BuildContext context, int index) {
        final cast = castList![index];
        final profilePath = cast.profilePath;
        const urlImageBase = 'https://media.themoviedb.org/t/p/w200';

        var imageUrl = profilePath != null ? urlImageBase + profilePath : '';
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Container(
                width: 120,
                height: 225,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Stack(
                    children: [
                      Positioned.fill(
                        child: BackdropFilter(
                          filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                          child: Container(color: Colors.transparent),
                        ),
                      ),
                      Image.network(imageUrl,
                          fit: BoxFit.cover, width: 120, height: 225,
                          errorBuilder: (context, error, stackTrace) {
                        return Image.network(
                            "https://media.istockphoto.com/id/1289461335/photo/portrait-of-a-handsome-black-man.jpg?s=612x612&w=0&k=20&c=gDibbpmkeV04ta3ociwAgpqcjdeU5sI1nnd78wrnz-g=");
                      }),
                      CastCardName(name: cast.name ?? ''),
                    ],
                  ),
                ),
              ),
              const SizedBox(width: 8),
            ],
          ),
        );
      },
    );
  }
}
