import 'package:demo/components/carousel_movie_home.dart';
import 'package:flutter/material.dart';

class CartPage extends StatelessWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final name = 'John Doe';
    return Scaffold(
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('welcome $name'),
                  Text(
                    'Let\'s relax and watch a movie',
                    style: TextStyle(fontSize: 12),
                  ),
                ],
              ),
              CircleAvatar(
                child: Text('JD'),
              )
            ],
          ),
        ),
        body: Padding(
          padding: EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  color: Colors.grey[200],
                  padding: EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Icon(
                        Icons.audiotrack,
                        color: Colors.green,
                        size: 30.0,
                      ),
                      SizedBox(width: 10),
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'Search for a movie',
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                CarouselMovieHome()
              ],
            ),
          ),
        ));
  }
}
