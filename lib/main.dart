import 'package:flutter/material.dart';
import 'features/cart/pages/page.dart';
import 'features/favorite/pages/page.dart';
import 'features/home/pages/page.dart';
import 'features/history/pages/page.dart';
import '../features/profile/page.dart';
import '../preferences/preferences.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Satisfy',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
        useMaterial3: true,
      ),
      home: const SplashScreen(),
    );
  }
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  double _opacity = 1.0;

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      if (mounted) {
        setState(() {
          _opacity = 0.0;
        });

        Future.delayed(const Duration(milliseconds: 400), () {
          if (mounted) {
            // Use PageRouteBuilder for smoother bottom-to-top transition with fade
            Navigator.of(context).pushReplacement(
              PageRouteBuilder(
                pageBuilder: (context, animation, secondaryAnimation) =>
                const MainPage(),
                transitionsBuilder:
                    (context, animation, secondaryAnimation, child) {
                  const begin = Offset(0.0, 1.0); // Start from bottom
                  const end = Offset.zero;
                  const curve = Curves.easeInOut;

                  var slideTween = Tween(begin: begin, end: end)
                      .chain(CurveTween(curve: curve));

                  var fadeTween = Tween<double>(begin: 0.0, end: 1.0);

                  var slideAnimation = animation.drive(slideTween);
                  var fadeAnimation = animation.drive(fadeTween);

                  return FadeTransition(
                    opacity: fadeAnimation,
                    child: SlideTransition(
                      position: slideAnimation,
                      child: child,
                    ),
                  );
                },
                transitionDuration:
                const Duration(milliseconds: 800), // Smoother and faster
              ),
            );
          }
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(
        opacity: _opacity,
        duration: const Duration(milliseconds: 600),
        child: Image.asset('assets/images/Splash.png', width: double.infinity, height: double.infinity),
      );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int selectedIndex = 0;

  List<Widget> pages = const [
    HomePage(),
    HistoryPage(),
    FavoritePage(),
    ProfilePage()
  ];

  IconButton buildItemNav(IconData icon, int index) => IconButton(
    onPressed: () {
      setState(() {
        selectedIndex = index;
      });
    },
    icon: Icon(icon, size: 20,),
    color: selectedIndex == index? const Color(0xff252B3D) : const Color(0xff808191),
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: pages[selectedIndex],
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const CartPage()),
          );
        },
        elevation: 0,
        backgroundColor: const Color(0xff252B3D),
        shape: const CircleBorder(),
        child: Image.asset(AppImage.cart, width: 20),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.03),
              blurRadius: 30,
              offset: const Offset(0, -10),
            ),
          ],
        ),
        child: BottomAppBar(
          shape: const CircularNotchedRectangle(),
          notchMargin: 10,
          elevation: 0,
          color: Colors.white,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              buildItemNav(AppIcon.home, 0),
              buildItemNav(AppIcon.history, 1),
              const SizedBox(width: 40.0),
              buildItemNav(AppIcon.favorite, 2),
              buildItemNav(AppIcon.profile, 3),
            ],
          ),
        ),
      ),

    );
  }
}

