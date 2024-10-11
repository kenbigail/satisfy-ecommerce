part of '../page.dart';

class All extends StatelessWidget {
  const All({super.key});

  final List<Product> foryou = const [
    Product(
        imageUrl: AppImage.foryou1,
        title: 'Rippy™ 3” Trail Shorts',
        price: '6.600.000 IDR'),
    Product(
        imageUrl: AppImage.foryou2,
        title: 'CloudMerino™ Long Tee',
        price: '9.900.000 IDR'),
    Product(
        imageUrl: AppImage.foryou3,
        title: 'Possessed Magazine',
        price: '450.000 IDR'),
    Product(
        imageUrl: AppImage.foryou4,
        title: 'GhostFleece™ AD Gloves',
        price: '9.900.000 IDR'),
  ];

  final List<Product> arrivals = const [
    Product(
        imageUrl: AppImage.arrivals1,
        title: 'Peaceshell™ River Shirt',
        price: '8.700.000 IDR'),
    Product(
        imageUrl: AppImage.arrivals2,
        title: 'CoffeeThermal™ Shorts',
        price: '6.600.000 IDR'),
    Product(
        imageUrl: AppImage.arrivals3,
        title: 'GhostFleece™ Half-Zip',
        price: '6.000.000 IDR'),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      CarouselScreen(),
      const SizedBox(height: 25.0),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0),
        child: Text(
          'For You',
          style: GoogleFonts.inter(fontSize: 20, fontWeight: FontWeight.w600),
        ),
      ),
      const SizedBox(height: 15.0),
      SizedBox(
        height: 195.0,
        child: ListView.separated(
          padding: const EdgeInsets.symmetric(horizontal: 30.0),
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          itemBuilder: (BuildContext context, int index) {
            final pro = foryou[index];
            return Container(
              width: 175.0,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12.0),
                  boxShadow: [
                    BoxShadow(
                      color: const Color(0xff35385A).withOpacity(0.12),
                      blurRadius: 10,
                      offset: const Offset(0, 1),
                    )
                  ]),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(height: 15),
                    Image.asset(
                      pro.imageUrl,
                      width: 151,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      pro.title,
                      style: GoogleFonts.rubik(
                          fontSize: 12, fontWeight: FontWeight.w500),
                    ),
                    Text(
                      pro.price,
                      style: GoogleFonts.rubik(
                          fontSize: 10,
                          fontWeight: FontWeight.w300,
                          fontStyle: FontStyle.italic),
                    )
                  ]),
            );
          },
          separatorBuilder: (BuildContext context, int index) {
            return const SizedBox(
              width: 20,
            );
          },
          itemCount: foryou.length,
        ),
      ),
      const SizedBox(height: 25.0),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0),
        child: Text(
          'New Arrivals',
          style: GoogleFonts.inter(fontSize: 20, fontWeight: FontWeight.w600),
        ),
      ),
      const SizedBox(height: 15.0),
      SizedBox(
          child: ListView.separated(
        padding: const EdgeInsets.symmetric(horizontal: 30.0),
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (BuildContext context, int index) {
          final arrive = arrivals[index];
          return Container(
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
                  padding: const EdgeInsets.only(top: 20.0, left: 20.0),
                  child: Image.asset(
                    arrive.imageUrl,
                    width: 120,
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
                          arrive.title,
                          style: GoogleFonts.rubik(
                              fontSize: 14, fontWeight: FontWeight.w500),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                        Text(
                          arrive.price,
                          style: GoogleFonts.rubik(
                              fontSize: 12,
                              fontWeight: FontWeight.w300,
                              fontStyle: FontStyle.italic),
                        ),
                      ],
                    ),
                  ),
                )
              ]));
        },
        separatorBuilder: (BuildContext context, int index) {
          return const SizedBox(height: 20);
        },
        itemCount: arrivals.length,
      ))
    ]);
  }
}

class Activity extends StatelessWidget {
  const Activity({super.key});

  final List<Product> trail = const [
    Product(
        imageUrl: AppImage.trail1,
        title: 'Pertex® 3L Fly Rain Jacket',
        price: '14.700.000 IDR'),
    Product(
        imageUrl: AppImage.trail2,
        title: 'Justice™ Cordura® 5L Vest',
        price: '14.300.000 IDR'),
  ];

  final List<Product> road = const [
    Product(
        imageUrl: AppImage.road1,
        title: 'PeaceShell™ 5” Unlined Shorts',
        price: '5.100.000 IDR'),
    Product(
        imageUrl: AppImage.road2,
        title: 'MochTech™ Muscle Tee',
        price: '3.200.000 IDR'),
  ];

  final List<Product> climb = const [
    Product(
        imageUrl: AppImage.climb1,
        title: 'SoftCell™ Cordura® Climbing',
        price: '4.700.000 IDR'),
    Product(
        imageUrl: AppImage.climb2,
        title: 'PeaceShell™ Technical Cargo Pants',
        price: '3.600.000 IDR'),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0),
          child: Text(
            'Trail Running',
            style: GoogleFonts.inter(fontSize: 20, fontWeight: FontWeight.w600),
          ),
        ),
        const SizedBox(height: 15.0),
        SizedBox(
            child: ListView.separated(
          padding: const EdgeInsets.symmetric(horizontal: 30.0),
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (BuildContext context, int index) {
            final arrive = trail[index];
            return Container(
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
                    padding: const EdgeInsets.only(top: 20.0, left: 20.0),
                    child: Image.asset(
                      arrive.imageUrl,
                      width: 120,
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
                            arrive.title,
                            style: GoogleFonts.rubik(
                                fontSize: 14, fontWeight: FontWeight.w500),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                          Text(
                            arrive.price,
                            style: GoogleFonts.rubik(
                                fontSize: 12,
                                fontWeight: FontWeight.w300,
                                fontStyle: FontStyle.italic),
                          ),
                        ],
                      ),
                    ),
                  )
                ]));
          },
          separatorBuilder: (BuildContext context, int index) {
            return const SizedBox(height: 20);
          },
          itemCount: trail.length,
        )),
        const SizedBox(height: 25.0),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0),
          child: Text(
            'Road Running',
            style: GoogleFonts.inter(fontSize: 20, fontWeight: FontWeight.w600),
          ),
        ),
        const SizedBox(height: 15.0),
        SizedBox(
            child: ListView.separated(
          padding: const EdgeInsets.symmetric(horizontal: 30.0),
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (BuildContext context, int index) {
            final arrive = road[index];
            return Container(
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
                    padding: const EdgeInsets.only(top: 20.0, left: 20.0),
                    child: Image.asset(
                      arrive.imageUrl,
                      width: 120,
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            arrive.title,
                            style: GoogleFonts.rubik(
                                fontSize: 14, fontWeight: FontWeight.w500),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                          Text(
                            arrive.price,
                            style: GoogleFonts.rubik(
                                fontSize: 12,
                                fontWeight: FontWeight.w300,
                                fontStyle: FontStyle.italic),
                          ),
                        ],
                      ),
                    ),
                  )
                ]));
          },
          separatorBuilder: (BuildContext context, int index) {
            return const SizedBox(height: 20);
          },
          itemCount: road.length,
        )),
        const SizedBox(height: 25.0),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0),
          child: Text(
            'Climbing',
            style: GoogleFonts.inter(fontSize: 20, fontWeight: FontWeight.w600),
          ),
        ),
        const SizedBox(height: 15.0),
        SizedBox(
            child: ListView.separated(
          padding: const EdgeInsets.symmetric(horizontal: 30.0),
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (BuildContext context, int index) {
            final arrive = climb[index];
            return Container(
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
                    padding: const EdgeInsets.only(top: 20.0, left: 20.0),
                    child: Image.asset(
                      arrive.imageUrl,
                      width: 120,
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
                            arrive.title,
                            style: GoogleFonts.rubik(
                                fontSize: 14, fontWeight: FontWeight.w500),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                          Text(
                            arrive.price,
                            style: GoogleFonts.rubik(
                                fontSize: 12,
                                fontWeight: FontWeight.w300,
                                fontStyle: FontStyle.italic),
                          ),
                        ],
                      ),
                    ),
                  )
                ]));
          },
          separatorBuilder: (BuildContext context, int index) {
            return const SizedBox(height: 20);
          },
          itemCount: climb.length,
        ))
      ],
    );
  }
}

class Apparel extends StatelessWidget {
  const Apparel({super.key});

  final List<Product> shorts = const [
    Product(
        imageUrl: AppImage.short1,
        title: 'Justice™ Cargo 9” Half Leg',
        price: '7.100.000 IDR'),
    Product(
        imageUrl: AppImage.short2,
        title: 'Rippy™ 3” Trail Shorts',
        price: '6.600.000 IDR'),
  ];

  final List<Product> tops = const [
    Product(
        imageUrl: AppImage.top1,
        title: 'PeaceShell™ River Shirt',
        price: 'OUT OF STOCK'),
    Product(
        imageUrl: AppImage.top2,
        title: 'CloudMerino™ T-Shirt',
        price: '7.200.000 IDR'),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0),
          child: Text(
            'Shorts',
            style: GoogleFonts.inter(fontSize: 20, fontWeight: FontWeight.w600),
          ),
        ),
        const SizedBox(height: 15.0),
        SizedBox(
            child: ListView.separated(
          padding: const EdgeInsets.symmetric(horizontal: 30.0),
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (BuildContext context, int index) {
            final arrive = shorts[index];
            return Container(
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
                    padding: const EdgeInsets.only(top: 20.0, left: 20.0),
                    child: Image.asset(
                      arrive.imageUrl,
                      width: 120,
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
                            arrive.title,
                            style: GoogleFonts.rubik(
                                fontSize: 14, fontWeight: FontWeight.w500),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                          Text(
                            arrive.price,
                            style: GoogleFonts.rubik(
                                fontSize: 12,
                                fontWeight: FontWeight.w300,
                                fontStyle: FontStyle.italic),
                          ),
                        ],
                      ),
                    ),
                  )
                ]));
          },
          separatorBuilder: (BuildContext context, int index) {
            return const SizedBox(height: 20);
          },
          itemCount: shorts.length,
        )),
        const SizedBox(height: 25.0),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0),
          child: Text(
            'Tops',
            style: GoogleFonts.inter(fontSize: 20, fontWeight: FontWeight.w600),
          ),
        ),
        const SizedBox(height: 15.0),
        SizedBox(
            child: ListView.separated(
          padding: const EdgeInsets.symmetric(horizontal: 30.0),
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (BuildContext context, int index) {
            final arrive = tops[index];
            return Container(
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
                    padding: const EdgeInsets.only(top: 20.0, left: 20.0),
                    child: Image.asset(
                      arrive.imageUrl,
                      width: 120,
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
                            arrive.title,
                            style: GoogleFonts.rubik(
                                fontSize: 14, fontWeight: FontWeight.w500),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                          Text(
                            arrive.price,
                            style: GoogleFonts.rubik(
                                fontSize: 12,
                                fontWeight: FontWeight.w300,
                                fontStyle: FontStyle.italic),
                          ),
                        ],
                      ),
                    ),
                  )
                ]));
          },
          separatorBuilder: (BuildContext context, int index) {
            return const SizedBox(height: 20);
          },
          itemCount: tops.length,
        )),
      ],
    );
  }
}

class Footwear extends StatelessWidget {
  const Footwear({super.key});

  final List<Product> trail = const [
    Product(
        imageUrl: AppImage.foot1,
        title: 'HOKA® Mafate Speed 4 Lite STSFY',
        price: '7.100.000 IDR'),
    Product(
        imageUrl: AppImage.foot2,
        title: 'HOKA® Mafate Speed 4 Lite STSFY',
        price: '6.600.000 IDR'),
  ];

  final List<Product> road = const [
    Product(
        imageUrl: AppImage.foot3,
        title: 'HOKA® Clifton LS STSFY',
        price: 'OUT OF STOCK'),
    Product(
        imageUrl: AppImage.foot4,
        title: 'HOKA® Clifton LS STSFY',
        price: '7.200.000 IDR'),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0),
          child: Text(
            'Trail',
            style: GoogleFonts.inter(fontSize: 20, fontWeight: FontWeight.w600),
          ),
        ),
        const SizedBox(height: 15.0),
        SizedBox(
            child: ListView.separated(
          padding: const EdgeInsets.symmetric(horizontal: 30.0),
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (BuildContext context, int index) {
            final arrive = trail[index];
            return Container(
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
                      arrive.imageUrl,
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
                            arrive.title,
                            style: GoogleFonts.rubik(
                                fontSize: 14, fontWeight: FontWeight.w500),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                          Text(
                            arrive.price,
                            style: GoogleFonts.rubik(
                                fontSize: 12,
                                fontWeight: FontWeight.w300,
                                fontStyle: FontStyle.italic),
                          ),
                        ],
                      ),
                    ),
                  )
                ]));
          },
          separatorBuilder: (BuildContext context, int index) {
            return const SizedBox(height: 20);
          },
          itemCount: trail.length,
        )),
        const SizedBox(height: 25.0),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0),
          child: Text(
            'Road',
            style: GoogleFonts.inter(fontSize: 20, fontWeight: FontWeight.w600),
          ),
        ),
        const SizedBox(height: 15.0),
        SizedBox(
            child: ListView.separated(
          padding: const EdgeInsets.symmetric(horizontal: 30.0),
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (BuildContext context, int index) {
            final arrive = road[index];
            return Container(
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
                      arrive.imageUrl,
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
                            arrive.title,
                            style: GoogleFonts.rubik(
                                fontSize: 14, fontWeight: FontWeight.w500),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                          Text(
                            arrive.price,
                            style: GoogleFonts.rubik(
                                fontSize: 12,
                                fontWeight: FontWeight.w300,
                                fontStyle: FontStyle.italic),
                          ),
                        ],
                      ),
                    ),
                  )
                ]));
          },
          separatorBuilder: (BuildContext context, int index) {
            return const SizedBox(height: 20);
          },
          itemCount: road.length,
        )),
      ],
    );
  }
}

class Accessories extends StatelessWidget {
  const Accessories({super.key});

  final List<Product> shorts = const [
    Product(
        imageUrl: AppImage.acc1,
        title: 'Justice™ Cordura® 5L Hydration Vest',
        price: '7.500.000 IDR'),
    Product(
        imageUrl: AppImage.acc2,
        title: 'Justice™ Dyneema® Trail Shorts',
        price: '6.600.000 IDR'),
  ];

  final List<Product> tops = const [
    Product(
        imageUrl: AppImage.acc3,
        title: 'Satisfy® Osprey® Talon™ Backpack',
        price: 'OUT OF STOCK'),
    Product(
        imageUrl: AppImage.acc4,
        title: 'Satisfy® Osprey® Talon™ Backpack',
        price: 'OUT OF STOCK'),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0),
          child: Text(
            'Shorts',
            style: GoogleFonts.inter(fontSize: 20, fontWeight: FontWeight.w600),
          ),
        ),
        const SizedBox(height: 15.0),
        SizedBox(
            child: ListView.separated(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (BuildContext context, int index) {
                final arrive = shorts[index];
                return Container(
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
                        padding: const EdgeInsets.only(top: 20.0, left: 20.0),
                        child: Image.asset(
                          arrive.imageUrl,
                          width: 120,
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
                                arrive.title,
                                style: GoogleFonts.rubik(
                                    fontSize: 14, fontWeight: FontWeight.w500),
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),
                              Text(
                                arrive.price,
                                style: GoogleFonts.rubik(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w300,
                                    fontStyle: FontStyle.italic),
                              ),
                            ],
                          ),
                        ),
                      )
                    ]));
              },
              separatorBuilder: (BuildContext context, int index) {
                return const SizedBox(height: 20);
              },
              itemCount: shorts.length,
            )),
        const SizedBox(height: 25.0),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0),
          child: Text(
            'Tops',
            style: GoogleFonts.inter(fontSize: 20, fontWeight: FontWeight.w600),
          ),
        ),
        const SizedBox(height: 15.0),
        SizedBox(
            child: ListView.separated(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (BuildContext context, int index) {
                final arrive = tops[index];
                return Container(
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
                        padding: const EdgeInsets.only(top: 20.0, left: 20.0),
                        child: Image.asset(
                          arrive.imageUrl,
                          width: 120,
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
                                arrive.title,
                                style: GoogleFonts.rubik(
                                    fontSize: 14, fontWeight: FontWeight.w500),
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),
                              Text(
                                arrive.price,
                                style: GoogleFonts.rubik(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w300,
                                    fontStyle: FontStyle.italic),
                              ),
                            ],
                          ),
                        ),
                      )
                    ]));
              },
              separatorBuilder: (BuildContext context, int index) {
                return const SizedBox(height: 20);
              },
              itemCount: tops.length,
            )),
      ],
    );
  }
}

class Others extends StatelessWidget {
  const Others({super.key});

  final List<Product> shorts = const [
    Product(
        imageUrl: AppImage.gift1,
        title: 'Gift Card',
        price: '1.500.000 IDR'),
    Product(
        imageUrl: AppImage.gift2,
        title: 'Justice™ Dyneema® Trail Shorts',
        price: '45.000.000 IDR'),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0),
          child: Text(
            'Gift Cards',
            style: GoogleFonts.inter(fontSize: 20, fontWeight: FontWeight.w600),
          ),
        ),
        const SizedBox(height: 15.0),
        SizedBox(
            child: ListView.separated(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (BuildContext context, int index) {
                final arrive = shorts[index];
                return Container(
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
                        padding: const EdgeInsets.only(top: 20.0, left: 20.0),
                        child: Image.asset(
                          arrive.imageUrl,
                          width: 120,
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
                                arrive.title,
                                style: GoogleFonts.rubik(
                                    fontSize: 14, fontWeight: FontWeight.w500),
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),
                              Text(
                                arrive.price,
                                style: GoogleFonts.rubik(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w300,
                                    fontStyle: FontStyle.italic),
                              ),
                            ],
                          ),
                        ),
                      )
                    ]));
              },
              separatorBuilder: (BuildContext context, int index) {
                return const SizedBox(height: 20);
              },
              itemCount: shorts.length,
            )),
      ],
    );
  }
}

class MorePage extends StatelessWidget {
  const MorePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
        appBar: AppBar(
          surfaceTintColor: Colors.white,
            title: Text(
          'Categories',
          style: GoogleFonts.inter(fontWeight: FontWeight.w600, fontSize: 20),
        )),
        body: Padding(
          padding: const EdgeInsets.only(top: 25.0),
          child: ListView(
            physics: const NeverScrollableScrollPhysics(),
            children: [
              GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ActivitiesPage()),
                    );
                  },
                  child: Image.asset(AppImage.thumb1)),
              const SizedBox(
                height: 15,
              ),
              GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ApparelPage()),
                    );
                  },
                  child: Image.asset(AppImage.thumb2)),
              const SizedBox(
                height: 15,
              ),
              GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const FootPage()),
                    );
                  },
                  child: Image.asset(AppImage.thumb3)),
              const SizedBox(
                height: 15,
              ),
              GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const AccessoriesPage()),
                    );
                  },
                  child: Image.asset(AppImage.thumb4)),
              const SizedBox(
                height: 15,
              ),
              GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const OthersPage()),
                    );
                  },
                  child: Image.asset(AppImage.thumb5)),
              const SizedBox(
                height: 15,
              )
            ],
          ),
        ));
  }
}

class ActivitiesPage extends StatelessWidget {
  const ActivitiesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        surfaceTintColor: Colors.white,
        title: Text(
          'Activities',
          style: GoogleFonts.inter(fontSize: 20, fontWeight: FontWeight.w600),
        ),
        backgroundColor: Colors.white,
        // Set a specific color to prevent changes
        elevation: 0, // Optional: Remove shadow/elevation for a flat design
      ),
      body: ListView(
        children: [
          const SizedBox(
            height: 25,
          ),
          Image.asset(AppImage.thumb1),
          const SizedBox(
            height: 25,
          ),
          const Activity(),
          const SizedBox(
            height: 50,
          )
        ],
      ),
    );
  }
}

class ApparelPage extends StatelessWidget {
  const ApparelPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        surfaceTintColor: Colors.white,
        title: Text(
          'Apparel',
          style: GoogleFonts.inter(fontSize: 20, fontWeight: FontWeight.w600),
        ),
        backgroundColor: Colors.white,
        // Set a specific color to prevent changes
        elevation: 0, // Optional: Remove shadow/elevation for a flat design
      ),
      body: ListView(
        children: [
          const SizedBox(
            height: 25,
          ),
          Image.asset(AppImage.thumb2),
          const SizedBox(
            height: 25,
          ),
          const Apparel(),
          const SizedBox(
            height: 50,
          )
        ],
      ),
    );
  }
}

class FootPage extends StatelessWidget {
  const FootPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        surfaceTintColor: Colors.white,
        title: Text(
          'Footwear',
          style: GoogleFonts.inter(fontSize: 20, fontWeight: FontWeight.w600),
        ),
        backgroundColor: Colors.white,
        // Set a specific color to prevent changes
        elevation: 0, systemOverlayStyle: SystemUiOverlayStyle.dark, // Optional: Remove shadow/elevation for a flat design
      ),
      body: ListView(
        children: [
          const SizedBox(
            height: 25,
          ),
          Image.asset(AppImage.thumb3),
          const SizedBox(
            height: 25,
          ),
          const Footwear(),
          const SizedBox(
            height: 50,
          )
        ],
      ),
    );
  }
}

class AccessoriesPage extends StatelessWidget {
  const AccessoriesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        surfaceTintColor: Colors.white,
        title: Text(
          'Accessories',
          style: GoogleFonts.inter(fontSize: 20, fontWeight: FontWeight.w600),
        ),
        backgroundColor: Colors.white,
        // Set a specific color to prevent changes
        elevation: 0, systemOverlayStyle: SystemUiOverlayStyle.dark, // Optional: Remove shadow/elevation for a flat design
      ),
      body: ListView(
        children: [
          const SizedBox(
            height: 25,
          ),
          Image.asset(AppImage.thumb4),
          const SizedBox(
            height: 25,
          ),
          const Accessories(),
          const SizedBox(
            height: 50,
          )
        ],
      ),
    );
  }
}

class OthersPage extends StatelessWidget {
  const OthersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        surfaceTintColor: Colors.white,
        title: Text(
          'More',
          style: GoogleFonts.inter(fontSize: 20, fontWeight: FontWeight.w600),
        ),
        backgroundColor: Colors.white,
        // Set a specific color to prevent changes
        elevation: 0, systemOverlayStyle: SystemUiOverlayStyle.dark, // Optional: Remove shadow/elevation for a flat design
      ),
      body: ListView(
        children: [
          const SizedBox(
            height: 25,
          ),
          Image.asset(AppImage.thumb5),
          const SizedBox(
            height: 25,
          ),
          const Others(),
          const SizedBox(
            height: 50,
          )
        ],
      ),
    );
  }
}
