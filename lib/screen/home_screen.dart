import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:guide_covid19/screen/panduan_disinfeksi.dart';
import 'package:guide_covid19/screen/panduan_penanganan.dart';
import 'package:guide_covid19/screen/protokol_pengananan_diri.dart';
import 'package:guide_covid19/screen/situasi_terkini.dart';

class HomeScreen extends StatelessWidget {
  static const routeName = '/HomeScreen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(12.0),
                child: SizedBox(
                  height: 180.0,
                  width: 350.0,
                  child: Carousel(
                    images: [
                      Image.asset('images/banner_covid.png'),
                      Image.asset('images/banner_covid.png'),
                      Image.asset('images/banner_covid.png'),
                    ],
                    overlayShadow: true,
                    overlayShadowColors: Colors.black45,
                    dotSize: 3.0,
                    dotSpacing: 15.0,
                    dotColor: Colors.lightGreen[800],
                    autoplay: true,
                    autoplayDuration: const Duration(seconds: 5),
                    dotBgColor: Colors.transparent,
                    animationCurve: Curves.bounceInOut,
//                    borderRadius: true,
//                    moveIndicatorFromBottom: 180.0,
//                    noRadiusForIndicator: true,
                    boxFit: BoxFit.fill,
                  ),
                ),
              ),
              Flexible(
                flex: 1,
                child: Padding(
                  padding: EdgeInsets.all(12.0),
                  child: Column(
                children: <Widget>[
                Container(
                decoration: BoxDecoration(
                color: Colors.lightGreen[800],
                  borderRadius: BorderRadius.circular(18.0),
                ),
                width: 330,
                height: 75,
                child: Align(
                  alignment: Alignment.center,
                  child: FlatButton(
                    padding: EdgeInsets.all(14.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(12.0),
                    ),
                    color: Colors.lightGreen[800],
                    textColor: Colors.white,
                    splashColor: Colors.lightGreen,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SituasiTerkini(),
                        ),
                      );
                    },
                    child: Text('Situasi Terkini COVID-19'),
                  ),
                ),
              ),
            ],
          ),
                ),
              ),
              Flexible(
                flex: 1,
                child: Padding(
                  padding: EdgeInsets.all(12.0),
                  child:  Column(
                    children: <Widget>[
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.lightGreen[800],
                          borderRadius: BorderRadius.circular(18.0),
                        ),
                        width: 330,
                        height: 75,
                        child: Align(
                          alignment: Alignment.center,
                          child: FlatButton(
                            padding: EdgeInsets.all(14.0),
                            shape: RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(12.0),
                            ),
                            color: Colors.lightGreen[800],
                            textColor: Colors.white,
                            splashColor: Colors.lightGreen,
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => ProtokolPenangananDiri(),
                                ),
                              );
                            },
                            child: Text('Protokol Penanganan & Isolasi Diri COVID-19'),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Flexible(
                flex: 1,
                child: Padding(
                  padding: EdgeInsets.all(12.0),
                  child: Column(
                    children: <Widget>[
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.lightGreen[800],
                          borderRadius: BorderRadius.circular(18.0),
                        ),
                        width: 330,
                        height: 75,
                        child: Align(
                          alignment: Alignment.center,
                          child: FlatButton(
                            padding: EdgeInsets.all(14.0),
                            shape: RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(12.0),
                            ),
                            color: Colors.lightGreen[800],
                            textColor: Colors.white,
                            splashColor: Colors.lightGreen,
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => PanduanPenanganan(),
                                ),
                              );
                            },
                            child: Text('Panduan Penanganan Cepat Medis & Kesehatan Masyarakat COVID-19'),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Flexible(
                flex: 1,
                child: Padding(
                  padding: EdgeInsets.all(12.0),
                  child: Column(
                    children: <Widget>[
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.lightGreen[800],
                          borderRadius: BorderRadius.circular(18.0),
                        ),
                        width: 330,
                        height: 75,
                        child: Align(
                          alignment: Alignment.center,
                          child: FlatButton(
                            padding: EdgeInsets.all(14.0),
                            shape: RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(12.0),
                            ),
                            color: Colors.lightGreen[800],
                            textColor: Colors.white,
                            splashColor: Colors.lightGreen,
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => PanduanDisinfeksi(),
                                ),
                              );
                            },
                            child: Text('Panduan Disinfeksi untuk Pencegahan Penularan COVID-19'),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
      ),
    );
  }
}