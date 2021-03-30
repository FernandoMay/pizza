import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pizza/constants.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class MobileView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SlidingUpPanel(
      maxHeight: size.height,
      minHeight: size.height / 1.6,
      body: Container(
        height: size.height / 2,
        width: size.width,
        alignment: Alignment.topCenter,
        child: Stack(
          children: [
            Container(
              width: size.width,
              height: size.height / 2,
              child: CarouselMobile(),
            ),
          ],
        ),
      ),
      borderRadius: BorderRadius.circular(25.0),
      color: Colors.grey[100],
      panel: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            height: 18.0,
          ),
          Container(
            width: double.infinity,
            // height: size.width * 0.12,

            padding: EdgeInsets.symmetric(horizontal: size.width * 0.07),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.all(size.width * 0.02),
                  decoration: BoxDecoration(
                    color: bglightColor,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(size.width * 0.02),
                      topRight: Radius.circular(size.width * 0.02),
                    ),
                  ),
                  child: DefaultTabController(
                    length: 4,
                    child: TabBar(
                      indicatorColor: tartaroColor,
                      tabs: [
                        SocialMediaMobile(text: "HOME"),
                        SocialMediaMobile(text: "BUSCAR"),
                        SocialMediaMobile(text: "PIZZERÍAS"),
                        SocialMediaMobile(text: "PERFIL"),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 28.0,
                ),
                Center(
                  child: Text(
                    "Find Your Dream Pizza",
                    style: GoogleFonts.roboto(
                      color: wineColor,
                      fontWeight: FontWeight.w500,
                      fontSize: size.width * 0.05,
                    ),
                  ),
                ),
                SizedBox(
                  height: size.width * 0.024,
                ),
                Container(
                  // width: size.width * 0.2,
                  // height: size.width * 0.07,
                  margin: EdgeInsets.symmetric(vertical: size.width * 0.007),
                  padding: EdgeInsets.symmetric(horizontal: size.width * 0.001),

                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: size.width * 0.7,
                        height: size.height * 0.05,
                        child: CupertinoTextField(
                          placeholder: "Enter the name of the pizzería",
                          style: GoogleFonts.montserrat(
                            color: blackyColor,
                            fontSize: size.width * 0.028,
                          ),
                          cursorColor: wineColor,
                          decoration: BoxDecoration(
                            color: bglightColor,
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        child: Text(
                          "Search",
                          style: GoogleFonts.montserrat(
                            color: Colors.white,
                            fontSize: size.width * 0.03,
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                          primary: wineColor,
                          padding: EdgeInsets.symmetric(
                            horizontal: size.width * 0.03,
                            vertical: size.width * 0.015,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: size.width * 0.048,
                ),
                Center(
                  child: Icon(
                    Icons.local_pizza,
                    size: size.width * 0.13,
                    color: blackyColor,
                  ),
                ),
                SizedBox(
                  height: size.width * 0.048,
                ),
                Center(
                  child: Text(
                    "Las mejores pizzerías de la zona",
                    style: GoogleFonts.roboto(
                      color: blackyColor,
                      fontWeight: FontWeight.w500,
                      fontSize: size.width * 0.04,
                    ),
                  ),
                ),
                SizedBox(
                  height: size.width * 0.013,
                ),
                Center(
                  child: Text(
                    "Encuentra tu pizzería ideal!",
                    style: GoogleFonts.nunitoSans(
                      fontWeight: FontWeight.w700,
                      fontSize: size.width * 0.06,
                      height: 1,
                      color: blackyColor,
                    ),
                  ),
                ),
                SizedBox(height: size.width * 0.038),
                Center(
                  child: Text(
                    "Selecciona alguna pizzeria de tu agrado\nY ve lo que tienen para tí!",
                    style: GoogleFonts.roboto(
                      fontSize: size.width * 0.03,
                      color: wineColor,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(
                  height: size.width * 0.028,
                ),
                Center(
                  child: Image.asset(
                    "lib/assets/pizza.png",
                    height: size.width * 0.4,
                    width: size.width * 0.4,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

List<String> carouselImages = [
  "https://media-adsa.camilyo.software/media-adsa/static/3733/519.jpg",
  "https://media-cdn.tripadvisor.com/media/photo-s/13/3f/48/55/pizzeria-verdi.jpg",
  "https://380342-1192392-raikfcquaxqncofqfm.stackpathdns.com/wp-content/uploads/2019/02/pizza3.jpg",
  "https://media-adsa.camilyo.software/media-adsa/static/3733/529.jpg",
  "https://i2.wp.com/codigoespagueti.com/wp-content/uploads/2018/03/pizza-planet-1.jpg?fit=1080%2C608&quality=80&ssl=1",
];

class CarouselMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Size size = MediaQuery.of(context).size;
    return Swiper(
      itemBuilder: (BuildContext context, int index) {
        return ClipRRect(
          // borderRadius: BorderRadius.only(
          //   topRight: Radius.circular(size.width * 0.02),
          //   topLeft: Radius.circular(size.width * 0.02),
          // ),
          child: Image.network(
            carouselImages[index],
            fit: BoxFit.cover,
          ),
        );
      },
      autoplay: true,
      itemCount: carouselImages.length,
      pagination: SwiperPagination(),
    );
  }
}

class SocialMediaMobile extends StatelessWidget {
  final String text;
  SocialMediaMobile({this.text});
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return RotatedBox(
      quarterTurns: 0,
      child: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: size.width * 0.01, vertical: 6.0),
        child: Text(
          text,
          style: GoogleFonts.montserrat(
            color: tartaroColor,
            fontSize: size.width * 0.02,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
