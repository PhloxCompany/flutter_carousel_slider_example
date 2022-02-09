import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_carousel_slider/carousel_slider.dart';
import 'package:flutter_carousel_slider/carousel_slider_indicators.dart';
import 'package:flutter_carousel_slider/carousel_slider_transforms.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: const FlutterCarouselSliderExample(),
    );
  }
}


class FlutterCarouselSliderExample extends StatelessWidget {
  const FlutterCarouselSliderExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual ,overlays: []);
    return Scaffold(
      backgroundColor: Colors.black,
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: CarouselSlider.builder(
            slideBuilder: (index) {
              return Image.asset('assets/images/city$index.jpg' , fit: BoxFit.cover,);
            },
            unlimitedMode: true,
            slideTransform: const CubeTransform(),
            slideIndicator: CircularSlideIndicator(
              indicatorBackgroundColor: Colors.white,
              currentIndicatorColor: Colors.grey[800]!,
              indicatorBorderColor: Colors.grey[400]!,
              padding: const EdgeInsets.only(bottom: 32)
            ),
            itemCount: 6),
      ),
    );
  }
}


