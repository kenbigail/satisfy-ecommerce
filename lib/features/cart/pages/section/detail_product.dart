part of '../page.dart';

class ProductDetailPage extends StatefulWidget {
  const ProductDetailPage({super.key});

  @override
  State<ProductDetailPage> createState() => _ProductDetailPageState();
}

class _ProductDetailPageState extends State<ProductDetailPage> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        surfaceTintColor: Colors.white,
        title: null,
      ),
      body: ListView(
        children: [
          Image.asset(
            AppImage.hoka1,
            height: 250,
          ),
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(35),
                    topRight: Radius.circular(35)),
                border: Border(
                    top:
                        BorderSide(color: Color(0xff111111).withOpacity(0.2)))),
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 30.0, vertical: 30.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'HOKA® Mafate Speed 4 Lite STSFY',
                    style: GoogleFonts.rubik(
                        fontSize: 24, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(height: 5),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Text(
                      'Trail Running',
                      style: GoogleFonts.rubik(
                          fontWeight: FontWeight.w300, fontSize: 14),
                    ),
                  ),
                  SizedBox(height: 15),
                  Text(
                    '7.100.000 IDR',
                    style: GoogleFonts.rubik(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        fontStyle: FontStyle.italic),
                  ),
                  SizedBox(height: 25),
                  Text(
                    'Description',
                    style: GoogleFonts.rubik(
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    'Engineered for the trail, the all-new Mafate Speed 4 Lite STSFY is radically light and ready to tackle technical terrain at speed. Weighs 284 grams.',
                    style: GoogleFonts.rubik(
                      fontSize: 12,
                    ),
                  ),
                  SizedBox(height: 30),
                  Image.asset(AppImage.hokad1),
                  SizedBox(height: 30),
                  Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            isFavorite = !isFavorite;
                          });
                        },
                        child: Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 15.0, vertical: 15.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(color: AppColor.primaryColor),
                            color: isFavorite ? AppColor.primaryColor : null,
                          ),
                          child: Icon(
                            Icons.favorite,
                            size: 20,
                            color: isFavorite ? Colors.white : Colors.grey,
                          ),
                        ),
                      ),
                      SizedBox(width: 10),
                      Expanded(
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: AppColor.primaryColor,
                            padding: EdgeInsets.symmetric(vertical: 15.0),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12), // Set border radius here
                            ),
                          ),
                          child: Text(
                            'Add to Cart',
                            style: TextStyle(color: Colors.white),
                          ),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
