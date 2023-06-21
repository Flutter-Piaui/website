import 'package:flutter/cupertino.dart';
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
  final _pageController = PageController();

  late String urlIndex = widget.photos[0];
  @override
  void initState() {
    _pageController.addListener(() {
      int page = _pageController.page!.round();
      setState(() {
        _currentIndex = page;
        urlIndex = widget.photos[_currentIndex];
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.4,
          child: PageView.builder(
            controller: _pageController,
            scrollDirection: Axis.horizontal,
            itemCount: widget.photos.length,
            // onPageChanged: (index) {
            //   setState(() {
            //     _currentIndex = index;
            //   });
            // },
            itemBuilder: (ctx, index) {
              return Container(
                margin: const EdgeInsets.symmetric(
                  horizontal: 10,
                ),
                child: Image.network(widget.photos[index]),
              );
            },
          ),
        ),
        bullet(urlIndex)
      ],
    );
  }

  Widget bullet(String urlImage) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: widget.photos.map((e) {
          Color colors = Colors.grey;
          if (e.compareTo(urlImage) == 0) {
            setState(() {
              colors = Colors.green;
            });
          } else {
            setState(() {
              colors = Colors.grey;
            });
          }
          return Container(
              margin: const EdgeInsets.all(3),
              width: 11,
              height: 11,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: colors,
              ));
        }).toList(),
      ),
    );
  }
}
