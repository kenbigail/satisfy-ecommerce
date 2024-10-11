import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:satisfy/preferences/colors.dart';
import 'package:satisfy/preferences/images.dart';


part 'section/detail_product.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  bool _isEmptySectionVisible = true;

  // Show FillSection when the button in EmptySection is pressed
  void _showFillSection() {
    setState(() {
      _isEmptySectionVisible = false; // Hide EmptySection and show FillSection
    });
  }

  // Show EmptySection when the Remove button is pressed
  void _showEmptySection() {
    setState(() {
      _isEmptySectionVisible = true; // Show EmptySection
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        surfaceTintColor: Colors.white,
        title: Text(
          'Your Cart',
          style: GoogleFonts.inter(fontSize: 20, fontWeight: FontWeight.w600),
        ),
      ),
      body: Column(
        children: [
          _isEmptySectionVisible
              ? EmptySection(onButtonPressed: _showFillSection)
              : FillSection(onRemovePressed: _showEmptySection),
        ],
      ),
    );
  }
}

class EmptySection extends StatelessWidget {
  const EmptySection({super.key, required this.onButtonPressed});

  final VoidCallback onButtonPressed;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min, // Centers content vertically
          children: [
            Text(
              'Cart is empty, interested in any?',
              style: GoogleFonts.inter(
                fontWeight: FontWeight.w500,
                fontSize: 15,
              ),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: onButtonPressed,
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColor.primaryColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15), // Rounded corners
                ),
              ),
              child: Text(
                'Explore',
                style: GoogleFonts.inter(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class FillSection extends StatefulWidget {
  const FillSection({super.key, required this.onRemovePressed});

  final VoidCallback onRemovePressed;

  @override
  _FillSectionState createState() => _FillSectionState();
}

class _FillSectionState extends State<FillSection> {
  int _quantity = 1;

  // Increment quantity
  void _incrementQuantity() {
    setState(() {
      _quantity++;
    });
  }

  // Decrement quantity, but it cannot go below 1
  void _decrementQuantity() {
    if (_quantity > 1) {
      setState(() {
        _quantity--;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 25.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30.0),
                  child: Text(
                    'Footwear',
                    style: GoogleFonts.inter(
                        fontSize: 20, fontWeight: FontWeight.w600),
                  ),
                ),
                const SizedBox(height: 15.0),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30.0),
                  child: GestureDetector(
                    onTap: () {
                      // Navigate to DetailProductPage when the container is tapped
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ProductDetailPage(), // Replace with your page
                        ),
                      );
                    },
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
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 15.0),
                            child: Image.asset(
                              AppImage.foot1, // Your asset path here
                              width: 150,
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  left: 15.0, right: 10.0, top: 15),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'HOKA® Mafate Speed 4 Lite STSFY',
                                          style: GoogleFonts.rubik(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w500),
                                          maxLines: 1,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                        Text(
                                          '7.100.000 IDR',
                                          style: GoogleFonts.rubik(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w300,
                                            fontStyle: FontStyle.italic,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        GestureDetector(
                                            onTap: _incrementQuantity,
                                            child: const Icon(
                                              Icons.add,
                                              size: 15,
                                            )),
                                        const SizedBox(width: 10,),
                                        Text(
                                          '$_quantity',
                                          style: GoogleFonts.inter(
                                              fontWeight: FontWeight.w600,
                                              fontSize: 12),
                                        ),
                                        const SizedBox(width: 10,),
                                        GestureDetector(
                                            onTap: _decrementQuantity,
                                            child: const Icon(
                                              Icons.remove,
                                              size: 15,
                                            )),
                                        const SizedBox(width: 30),
                                        TextButton.icon(
                                          onPressed: widget.onRemovePressed,
                                          icon: const Icon(
                                            Icons.delete,
                                            color: Colors.red,
                                            size: 10,
                                          ),
                                          label: Text(
                                            "Remove",
                                            style: GoogleFonts.inter(
                                                color: Colors.red, fontSize: 10),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          // Bottom fixed container
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: double.infinity,
              height: 200,
              padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 30.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(25.0),
                  topRight: Radius.circular(25.0),
                ),
                border: Border(
                  top: BorderSide(
                    color: const Color(0xff111111).withOpacity(0.2),
                    width: 1.0,
                  ),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Subtotal:', style: GoogleFonts.inter(
                        fontSize: 12,
                        fontWeight: FontWeight.w600
                      ),),
                      Text('7.100.000 IDR', style: GoogleFonts.inter(
                          fontSize: 12,
                          fontWeight: FontWeight.w600
                      ),)
                    ],
                  ),
                  SizedBox(height: 30),
                  SizedBox(
                    width: double.infinity, // Full width of the parent
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColor.primaryColor,
                        padding: const EdgeInsets.symmetric(vertical: 15.0),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      child: Text(
                        'Continue to Checkout',
                        style: GoogleFonts.inter(
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                          color: Colors.white
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const CartPage()),
                        );
                      },
                    ),
                  )
                ],
              )
            ),
          ),
        ],
      ),
    );
  }
}
