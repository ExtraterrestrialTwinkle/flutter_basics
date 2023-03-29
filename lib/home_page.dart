// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_svg/svg.dart';

const _assetName = 'assets/images/notepad.svg';
const _imageFromNetwork =
    'http://upload.wikimedia.org/wikipedia/commons/0/02/SVG_logo.svg';

class HomePage extends StatelessWidget {
  const HomePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: Center(child: CarouselSlider(
          options: CarouselOptions(height: 300.0),
          items: [
            SvgPicture.asset(_assetName),
            SvgPicture.network(_imageFromNetwork,
                placeholderBuilder: (BuildContext context) => Container(
                      margin: const EdgeInsets.all(30.0),
                      child: const CircularProgressIndicator(),
                    )),
          ],
        )));
  }
}
