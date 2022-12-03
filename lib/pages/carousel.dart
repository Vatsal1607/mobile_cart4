import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Carousel extends StatelessWidget {
  const Carousel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: CarouselSlider(
        options: CarouselOptions(
          height: 220.0,
          autoPlay: true,
          viewportFraction: 0.8,
          autoPlayInterval: const Duration(seconds: 2),
          autoPlayAnimationDuration: const Duration(milliseconds: 800),
          autoPlayCurve: Curves.fastOutSlowIn,
        ),
        items: [1,2,3,4,5].map((i) {
          return Builder(
            builder: (BuildContext context) {
              return Container(
                  width: MediaQuery.of(context).size.width,
                  margin: const EdgeInsets.symmetric(horizontal: 5.0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15)
                  ),
                  child: Column(
                    children: [
                      const SizedBox(height: 9,),
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Image.network('https://www.bing.com/th?id=OIP.oSCsiB3QUL_5izS96gt94gHaF5&w=280&h=223&c=8&rs=1&qlt=90&o=6&dpr=1.3&pid=3.1&rm=2',
                              fit: BoxFit.cover,
                              height: 180,
                              width: double.infinity,
                            )
                        ),
                        ),
                      const Align(
                        alignment: Alignment.bottomCenter,
                        child: Text("Details"),
                      ),
                    ],
                  )
              );
            },
          );
        }).toList(),
      ),
    );
  }
}
