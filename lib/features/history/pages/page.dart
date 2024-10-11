import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../preferences/colors.dart';
import '../../../preferences/images.dart';

class HistoryPage extends StatefulWidget {
  const HistoryPage({super.key});

  @override
  _HistoryPageState createState() => _HistoryPageState();
}

class _HistoryPageState extends State<HistoryPage> {
  bool _isEmptySectionVisible = true;

  void _showFillSection() {
    setState(() {
      _isEmptySectionVisible = false; // Hide EmptySection and show FillSection
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Container(
            width: double.infinity,
            height: 50,
            color: Colors.white,
            child: Center(
              child: Text(
                'Purchases History',
                style: GoogleFonts.inter(
                  fontWeight: FontWeight.w600,
                  fontSize: 20,
                ),
              ),
            ),
          ),
          // Show EmptySection or FillSection based on the current state
          _isEmptySectionVisible
              ? EmptySection(onButtonPressed: _showFillSection)
              : const FillSection(),
        ],
      ),
    );
  }
}

class EmptySection extends StatelessWidget {
  final VoidCallback onButtonPressed;

  const EmptySection({super.key, required this.onButtonPressed});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min, // Centers content vertically
          children: [
            Text(
              'no purchases yet',
              style:
              GoogleFonts.inter(fontWeight: FontWeight.w500, fontSize: 15),
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: onButtonPressed,
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColor.primaryColor,
                shape: RoundedRectangleBorder(
                  // Set shape (optional)
                  borderRadius: BorderRadius.circular(15), // Rounded corners
                ),
              ),
              child: Text(
                'Purchase',
                style: GoogleFonts.inter(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: Colors.white),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class FillSection extends StatelessWidget {
  const FillSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 25.0),
      child: Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: Text(
                  'Recently Purchased',
                  style: GoogleFonts.inter(fontSize: 20, fontWeight: FontWeight.w600),
                ),
              ),
              const SizedBox(height: 15.0),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: Container(
                  alignment: AlignmentDirectional.centerStart,
                  width: double.infinity,
                  height: 100,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12.0),
                    boxShadow: [
                      BoxShadow(
                        color: const Color(0xff35385A).withOpacity(0.12),
                        blurRadius: 30,
                        offset: const Offset(0, 2),
                      )
                    ],
                  ),
                  child: Row(children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 15.0),
                      child: Image.asset(
                        AppImage.foot1,
                        width: 150,
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 15.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'HOKA® Mafate Speed 4 Lite STSFY',
                              style: GoogleFonts.rubik(
                                  fontSize: 14, fontWeight: FontWeight.w500),
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            ),
                            Text(
                              '7.100.000 IDR',
                              style: GoogleFonts.rubik(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w300,
                                  fontStyle: FontStyle.italic),
                            ),
                          ],
                        ),
                      ),
                    )
                  ])),
              )],
          )
      ),
    );
  }
}
