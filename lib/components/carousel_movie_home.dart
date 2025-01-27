import 'package:flutter/material.dart';

class CarouselMovieHome extends StatelessWidget {
  const CarouselMovieHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return (Column(
      children: [
        Text("title"),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              Container(
                width: 200,
                height: 200,
                color: Colors.red,
                child: Column(
                  children: [
                    Text("Movie 1"),
                    Text("Description 1"),
                  ],
                ),
              ),
              Container(
                width: 200,
                height: 200,
                color: Colors.blue,
                child: Column(
                  children: [
                    Text("Movie 1"),
                    Text("Description 1"),
                  ],
                ),
              ),
              Container(
                width: 200,
                height: 200,
                color: Colors.red,
                child: Column(
                  children: [
                    Text("Movie 1"),
                    Text("Description 1"),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    ));
  }
}
