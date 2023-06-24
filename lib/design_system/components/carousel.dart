import 'package:flutter/material.dart';

class Carousel extends StatefulWidget {
  final List<String> photos;
  const Carousel({
    required this.photos,
    super.key,
  });

  @override
  State<Carousel> createState() => _CarouselState();
}

class _CarouselState extends State<Carousel> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.4,
      child: PageView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: widget.photos.length,
        onPageChanged: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        itemBuilder: (ctx, index) {
          return Container(
            margin: const EdgeInsets.symmetric(
              horizontal: 10,
            ),
            child: Image.network(
              widget.photos[index],
            ),
          );
        },
      ),
    );
  }
}
