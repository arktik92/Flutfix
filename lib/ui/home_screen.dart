import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutflix/ui/widgets/movies_slider.dart';
import 'package:flutflix/ui/widgets/trending_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Image.asset(
            'assets/flutflix.png',
          fit: BoxFit.cover,
          height: 40,
          filterQuality: FilterQuality.high,
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Trending Movies', style: GoogleFonts.aBeeZee(fontSize: 25)
                ),
                const SizedBox(height: 32),
                const TrendingSlider(),
                const SizedBox(height: 32),
                Text(
                  "Top rated movies",
                  style: GoogleFonts.aBeeZee(
                    fontSize: 25
                  ),
                ),
                const SizedBox(height: 32),
                const MoviesSlider(),
                const SizedBox(height: 32),
                Text(
                  "Upcoming movies",
                  style: GoogleFonts.aBeeZee(
                      fontSize: 25
                  ),
                ),
                const SizedBox(height: 32),
                const MoviesSlider()
              ],
            ),
          ),
      ),
    );
  }
}