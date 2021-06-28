import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class EcomApp extends StatefulWidget {
  @override
  _EcomAppState createState() => _EcomAppState();
}

class _EcomAppState extends State<EcomApp> {
  @override
  var lst = [0, 1, 2, 3, 4, 5, 6, 7];
  List<String> imglst = [
    "https://cdn.mos.cms.futurecdn.net/vEcELHdn998wRTcCzqV5m9.jpg",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQmMNRcZ4WTHadUREtBtvlWUqMWCq3Ycwa_TjCcAxqysNJlOeGXgjwnogN1zWlPN1DcAPg&usqp=CAU",
    "https://www.windowscentral.com/sites/wpcentral.com/files/styles/large/public/field/image/2020/10/hp-spectre-x360-14-press-1.jpg",
    "https://fdn.gsmarena.com/imgroot/news/21/02/framework-laptop/-1200/gsmarena_001.jpg",
    "https://www.windowscentral.com/sites/wpcentral.com/files/styles/xlarge_wm_brb/public/field/image/2021/01/hp-spectre-x360-14-hero3.jpg",
    "https://cdn.mos.cms.futurecdn.net/vEcELHdn998wRTcCzqV5m9.jpg",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQmMNRcZ4WTHadUREtBtvlWUqMWCq3Ycwa_TjCcAxqysNJlOeGXgjwnogN1zWlPN1DcAPg&usqp=CAU",
    "https://www.windowscentral.com/sites/wpcentral.com/files/styles/large/public/field/image/2020/10/hp-spectre-x360-14-press-1.jpg"
  ];
  List<String> titlist = [
    "laptop",
    "laptop",
    "laptop",
    "laptop",
    "laptop",
    "laptop",
    "laptop",
    "laptop"
  ];

  Widget build(BuildContext context) {
    double widths = MediaQuery.of(context).size.width;
    double heights = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: Text(
          "ECOM APP UI",
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.bold, fontSize: 23),
        )),
        backgroundColor: Colors.white,
        actions: [
          Container(
            width: 100,
            height: 100,
            child: (Icon(
              Icons.notifications,
              color: Colors.black,
              size: 30,
            )),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Text(
                    "Items",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 25),
                  ),
                  new Spacer(),
                  Text(
                    "View more",
                    style: TextStyle(
                        color: Colors.purple,
                        fontWeight: FontWeight.bold,
                        fontSize: 15),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "More Categories",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 35),
                  ),
                ),
              ],
            ),
            CarouselSlider(items: [
              Container(
                width: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  border: Border.all(width: 3),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      Icon(
                        Icons.shopping_bag,
                        color: Colors.purple,
                        size: 25,
                      ),
                      Text(
                        "CLOTHES",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                width: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  border: Border.all(width: 3),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      Icon(
                        Icons.mobile_friendly,
                        color: Colors.purple,
                        size: 25,
                      ),
                      Text(
                        "ELECTRONICS",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                width: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  border: Border.all(width: 3),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      Icon(
                        Icons.apps_outlined,
                        color: Colors.purple,
                        size: 25,
                      ),
                      Text(
                        "APPLIANCES",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
              ),
            ], options: CarouselOptions(height: 50, viewportFraction: 0.5)),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                children: [
                  Text(
                    "Popular Items",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 25),
                  ),
                  new Spacer(),
                  Text(
                    "View more",
                    style: TextStyle(
                        color: Colors.purple,
                        fontWeight: FontWeight.bold,
                        fontSize: 15),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0, bottom: 20),
              child: CarouselSlider(
                items: [
                  //1st Image of Slider
                  Container(
                    margin: EdgeInsets.all(6.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      image: DecorationImage(
                        image: NetworkImage(
                            "https://cdn.mos.cms.futurecdn.net/vEcELHdn998wRTcCzqV5m9.jpg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),

                  //2nd Image of Slider
                  Container(
                    margin: EdgeInsets.all(6.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      image: DecorationImage(
                        image: NetworkImage(
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQmMNRcZ4WTHadUREtBtvlWUqMWCq3Ycwa_TjCcAxqysNJlOeGXgjwnogN1zWlPN1DcAPg&usqp=CAU"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),

                  //3rd Image of Slider
                  Container(
                    margin: EdgeInsets.all(6.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      image: DecorationImage(
                        image: NetworkImage(
                            "https://www.windowscentral.com/sites/wpcentral.com/files/styles/large/public/field/image/2020/10/hp-spectre-x360-14-press-1.jpg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),

                  //4th Image of Slider
                  Container(
                    margin: EdgeInsets.all(6.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      image: DecorationImage(
                        image: NetworkImage(
                            "https://fdn.gsmarena.com/imgroot/news/21/02/framework-laptop/-1200/gsmarena_001.jpg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),

                  //5th Image of Slider
                  Container(
                    margin: EdgeInsets.all(6.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      image: DecorationImage(
                        image: NetworkImage(
                            "https://www.windowscentral.com/sites/wpcentral.com/files/styles/xlarge_wm_brb/public/field/image/2021/01/hp-spectre-x360-14-hero3.jpg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],

                //Slider Container properties
                options: CarouselOptions(
                  height: 180.0,
                  enlargeCenterPage: true,
                  autoPlay: true,
                  aspectRatio: 16 / 9,
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enableInfiniteScroll: true,
                  autoPlayAnimationDuration: Duration(milliseconds: 800),
                  viewportFraction: 0.8,
                ),
              ),
            ),
            GridView.count(
                shrinkWrap: true,
                crossAxisCount: 2,
                physics: NeverScrollableScrollPhysics(),
                children: List.generate(lst.length - 1, (index) {
                  return Itm(imglst[index.toInt()], titlist[index.toInt()]);
                })),
          ],
        ),
      ),
    );
  }
}

Widget Itm(img, tit) {
  return Column(
    children: [
      Container(
        width: 160,
        height: 100,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(12)),
          image: DecorationImage(image: NetworkImage(img), fit: BoxFit.fill),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(left: 18.0, top: 10),
        child: Row(
          children: [
            Text(
              tit,
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(left: 10),
        child: Row(
          children: [
            Icon(
              Icons.star,
              color: Colors.yellow,
              size: 15,
            ),
            Text("5.0 (23 Reviews)"),
          ],
        ),
      )
    ],
  );
}
