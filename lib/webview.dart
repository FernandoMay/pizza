import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pizza/constants.dart';

class WebView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Container(
          margin: EdgeInsets.symmetric(
            horizontal: size.width * 0.05,
            vertical: size.width * 0.03,
          ),
          padding: EdgeInsets.all(size.width * 0.01),
          height: size.height * 0.9,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(size.width * 0.025),
          ),
          child: Row(
            children: [
              Container(
                height: double.infinity,
                width: size.width * 0.05,
                decoration: BoxDecoration(
                  color: bglightColor,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(size.width * 0.02),
                    bottomLeft: Radius.circular(size.width * 0.02),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SocialMediaWeb(text: "HOME"),
                    SocialMediaWeb(text: "BUSCAR"),
                    SocialMediaWeb(text: "PIZZERÍAS"),
                    SocialMediaWeb(text: "PERFIL"),
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  padding: EdgeInsets.symmetric(
                    vertical: size.width * 0.01,
                    horizontal: size.width * 0.03,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                  child: Container(
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset(
                            "lib/assets/pizza.png",
                            height: size.width * 0.07,
                            width: size.width * 0.07,
                          ),
                          Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Las mejores pizzerías de la zona",
                                  style: GoogleFonts.roboto(
                                    color: blackyColor,
                                    fontWeight: FontWeight.w500,
                                    fontSize: size.width * 0.012,
                                  ),
                                ),
                                SizedBox(
                                  height: size.width * 0.013,
                                ),
                                Text(
                                  "Encuentra tu pizzería ideal!",
                                  style: GoogleFonts.nunitoSans(
                                    fontWeight: FontWeight.w700,
                                    fontSize: size.width * 0.04,
                                    height: 1,
                                    color: blackyColor,
                                  ),
                                ),
                                SizedBox(height: size.width * 0.01),
                                Text(
                                  "Selecciona alguna pizzeria de tu agrado\nY ve lo que tienen para tí!",
                                  style: GoogleFonts.roboto(
                                    fontSize: size.width * 0.012,
                                    color: wineColor,
                                  ),
                                ),
                                SizedBox(
                                  height: size.width * 0.13,
                                ),
                                Icon(
                                  Icons.local_pizza,
                                  size: size.width * 0.03,
                                  color: blackyColor,
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 18.0,
                          ),
                          Container(
                            width: size.width * 0.35,
                            height: size.width * 0.12,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Find Your Dream Pizza",
                                  style: GoogleFonts.roboto(
                                    color: wineColor,
                                    fontWeight: FontWeight.w500,
                                    fontSize: size.width * 0.014,
                                  ),
                                ),
                                SizedBox(
                                  height: size.width * 0.01,
                                ),
                                Container(
                                  // width: size.width * 0.2,
                                  // height: size.width * 0.07,
                                  margin: EdgeInsets.symmetric(
                                      vertical: size.width * 0.007),
                                  padding: EdgeInsets.symmetric(
                                      horizontal: size.width * 0.001),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        width: size.width * 0.22,
                                        height: size.height * 0.05,
                                        child: CupertinoTextField(
                                          placeholder:
                                              "Enter the name of the pizzería",
                                          style: GoogleFonts.montserrat(
                                            color: blackyColor,
                                            fontSize: size.width * 0.01,
                                          ),
                                          cursorColor: wineColor,
                                          decoration: BoxDecoration(
                                            color: bglightColor,
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                          ),
                                        ),
                                      ),
                                      ElevatedButton(
                                        onPressed: () {},
                                        child: Text(
                                          "Search",
                                          style: GoogleFonts.montserrat(
                                            color: Colors.white,
                                            fontSize: size.width * 0.013,
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
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 18.0,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(size.width * 0.02),
                      bottomRight: Radius.circular(size.width * 0.02),
                    ),
                  ),
                  child: CarouselWeb(),
                ),
              ),
            ],
          ),
        ),
      ],
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

class CarouselWeb extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Swiper(
      itemBuilder: (BuildContext context, int index) {
        return ClipRRect(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(size.width * 0.02),
            bottomRight: Radius.circular(size.width * 0.02),
          ),
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

class SocialMediaWeb extends StatelessWidget {
  final String text;
  SocialMediaWeb({this.text});
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return RotatedBox(
      quarterTurns: -1,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: size.width * 0.01),
        child: Text(
          text,
          style: GoogleFonts.montserrat(
            color: tartaroColor,
            fontSize: size.width * 0.01,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
    );
  }
}
