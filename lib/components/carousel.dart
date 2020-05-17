import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:storytechsehej/models/job_opening.dart';

import 'job_opening_card.dart';

class Carousel extends StatelessWidget {
  final List<LinearGradient> gradients = [
    LinearGradient(
      begin: FractionalOffset.bottomLeft,
      end: FractionalOffset.topRight,
      stops: [0.0, 1.0],
      colors: [Color(0xff7966f5), Color(0xffb073f5)],
    ),
    LinearGradient(
      begin: FractionalOffset.bottomLeft,
      end: FractionalOffset.topRight,
      stops: [0.0, 1.0],
      colors: [Color(0xff6891ff), Color(0xff00b0f5)],
    ),
    LinearGradient(
      begin: FractionalOffset.bottomLeft,
      end: FractionalOffset.topRight,
      stops: [0.0, 1.0],
      colors: [Color(0xff7966f5), Color(0xffb073f5)],
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        enableInfiniteScroll: false,
        autoPlay: false,
        initialPage: 1,
      ),
      items: [
        Job(
          company: 'Royal Cyber',
          job: 'Mobile Application Designer',
          type: 'Full Time',
          loc: 'Remote',
          salary: '\$46K Yr',
          gradient: gradients[0],
          plusNumber: '+ 2.8K',
        ),
        Job(
          company: 'Stirring Minds',
          job: 'Graphic\nDesigner',
          type: 'Part Time',
          loc: 'London',
          salary: '\$35K Yr',
          gradient: gradients[1],
          plusNumber: '+ 1.4K',
        ),
        Job(
          company: 'GreaterTech',
          job: 'Web\nDesigner',
          type: 'Part Time',
          loc: 'New York',
          salary: '\30K Yr',
          gradient: gradients[2],
          plusNumber: '+ 3.2K',
        ),
      ].map((item) {
        return JobOpeningCard(
          job: item,
        );
      }).toList(),
    );
  }
}
