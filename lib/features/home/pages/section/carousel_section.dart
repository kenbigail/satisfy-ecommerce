part of '../page.dart';

class CarouselScreen extends StatefulWidget {
  @override
  _CarouselScreenState createState() => _CarouselScreenState();
}

class _CarouselScreenState extends State<CarouselScreen> {
  int _currentIndex = 0;
  double _opacity = 1.0;
  final _isAutoSliding = true; // Track whether auto sliding is enabled

  List<String> images = [
    AppImage.carousel1,
    AppImage.carousel2,
    AppImage.carousel3
  ];

  @override
  void initState() {
    super.initState();
    _startAutoSlide();
  }

  void _startAutoSlide() {
    if (_isAutoSliding) {
      Future.delayed(const Duration(seconds: 4), () {
        setState(() {
          _opacity = 0.0; // Start fading out
        });

        Future.delayed(const Duration(milliseconds: 400), () {
          setState(() {
            _currentIndex =
                (_currentIndex + 1) % images.length; // Go to the next image
            _opacity = 1.0; // Fade back in
          });

          _startAutoSlide(); // Restart auto slide
        });
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: Stack(
        alignment: Alignment.center,
        children: [
          AnimatedOpacity(
            opacity: _opacity,
            duration: const Duration(milliseconds: 400),
            child: Image.asset(
              images[_currentIndex],
              fit: BoxFit.cover,
              width: double.infinity,
              height: 175,
            ),
          ),
          Positioned(
            bottom: 10, // Position the progress bars at the bottom of the image
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(images.length, (index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 4.0),
                  child: AnimatedContainer(
                    duration: Duration(milliseconds: 300), // Match with slide duration
                    width: index == _currentIndex ? 30.0 : 20.0,
                    height: 4.0,
                    decoration: BoxDecoration(
                      color: index == _currentIndex
                          ? Colors.white
                          : Colors.white.withOpacity(0.5),
                      borderRadius: BorderRadius.circular(2),
                    ),
                  ),
                );
              }),
            ),
          ),
        ],
      ),
    );
  }
}


