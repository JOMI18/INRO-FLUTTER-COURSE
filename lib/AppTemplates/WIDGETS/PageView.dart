import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

// PageView is a widget in Flutter that allows users to swipe between different pages,
// similar to a ViewPager in Android or a UIPageViewController in iOS. It's commonly used for implementing onboarding

// screens, image galleries, or any situation where you want to display a series of pages that users can navigate
// through by swiping horizontally.

class PageViewWidget extends StatelessWidget {
  final PageController _pageController = PageController();

  PageViewWidget({super.key, title});

// // // // NEEDS WORK // // // // //
  // @override
  // Widget build(BuildContext context) {
  //   return Scaffold(
  //     appBar: AppBar(title: Text('PageView with Swipe Control')),
  //     body: GestureDetector(
  //       onHorizontalDragUpdate: (details) {
  //         // Calculate the swipe distance and direction
  //         double dx = details.delta.dx;
  //         double screenWidth = MediaQuery.of(context).size.width;
  //         // Move the page view by the same amount as the swipe
  //         _pageController.jumpTo(_pageController.offset - dx / screenWidth);
  //       },
  //       child: PageView(
  //         controller: _pageController,
  //         physics: NeverScrollableScrollPhysics(), // Disable page scrolling
  //         children: [
  //           Image.network('https://via.placeholder.com/200'),
  //           Image.network('https://via.placeholder.com/200'),
  //           Image.network('https://via.placeholder.com/200'),
  //         ],
  //       ),
  //     ),
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(2.0),
            child: PageView(
              // pageSnapping: false, // allows continual flow
              controller: _pageController,
              scrollDirection: Axis.horizontal,
              children: [
                Container(
                  color: Colors.blue,
                  child: const Center(
                      child: Text(
                    'Page 1',
                    style: TextStyle(fontSize: 25),
                  )),
                ),
                Container(
                  color: Colors.green,
                  child: const Center(
                      child: Text(
                    'Page 2',
                    style: TextStyle(fontSize: 25),
                  )),
                ),
                Container(
                  color: Colors.orange,
                  child: const Center(
                      child: Text(
                    'Page 3',
                    style: TextStyle(fontSize: 25),
                  )),
                ),
              ],
              // children: [Hello(), Okay(), Hi()],
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        SmoothPageIndicator(
          controller: _pageController,
          count: 3, // Number of pages
          effect: const WormEffect(
              spacing: 8.0,
              radius: 6.0,
              dotWidth: 16.0,
              dotHeight: 16.0,
              paintStyle: PaintingStyle.stroke,
              strokeWidth: 1.5,
              dotColor: Colors.grey,
              activeDotColor: Colors.indigo), // Choose your preferred effect
// spacing: This parameter specifies the distance between the center points of adjacent dots in the page indicator.
// radius: It defines the radius of the dots that make up the page indicator.
// dotWidth and dotHeight: These parameters determine the width and height of the dots in the page indicator. If the values of these parameters are the same, the dots will be circular; otherwise, they will be elliptical.
// paintStyle: This parameter specifies the style used to paint the dots. You can choose between PaintingStyle.fill (to fill the dots with color) and PaintingStyle.stroke (to draw only the outline of the dots).
// strokeWidth: If paintStyle is set to PaintingStyle.stroke, this parameter defines the width of the stroke used to draw the outline of the dots.
// dotColor: This parameter sets the color of the inactive dots in the page indicator.
// activeDotColor: It defines the color of the dot representing the active page.
          onDotClicked: (index) {
            // Handle dot click event if needed
          },
        ),
        const SizedBox(
          height: 20,
        )
      ],
    ));
  }
}
