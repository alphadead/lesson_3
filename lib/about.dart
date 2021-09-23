import 'package:flutter/material.dart';
import 'package:lesson_3/model.dart';

class AboutMovie extends StatefulWidget {
  const AboutMovie({Key? key, required this.result}) : super(key: key);
  final Result result;
  @override
  _AboutMovieState createState() => _AboutMovieState();
}

class _AboutMovieState extends State<AboutMovie> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios),
          color: Colors.black,
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(widget.result.originalTitle,
            style: TextStyle(fontSize: 25, color: Colors.black)),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image(
                    image: NetworkImage('https://image.tmdb.org/t/p/w500' +
                        widget.result.posterPath),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Overview:',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              Container(
                child: Text(
                  widget.result.overview,
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Popularity:',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              Container(
                child: Text(
                  widget.result.popularity.roundToDouble().toInt().toString() +
                      '/100',
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image(
                    image: NetworkImage('https://image.tmdb.org/t/p/w500' +
                        widget.result.backdropPath),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
