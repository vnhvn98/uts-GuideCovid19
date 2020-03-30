import 'dart:io';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:guide_covid19/service/ApiService.dart';
import 'package:guide_covid19/service/get.dart';

class InfoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: RefreshIndicator(
                  onRefresh: () =>
                      Provider.of<CoronaProvider>(context, listen: false).getData(),
                  child: Container(
                    margin: const EdgeInsets.all(10),
                    child: FutureBuilder(
                      future:
                      Provider.of<CoronaProvider>(context, listen: false).getData(),
                      builder: (context, snapshot) {
                        if (snapshot.connectionState == ConnectionState.waiting) {
                          return Center(
                            child: CircularProgressIndicator(),
                          );
                        }

                        else if(snapshot.connectionState == ConnectionState.none){
                          return AlertDialog(
                            title: Text('Tidak ada koneksi Internet', style: TextStyle(fontSize: 18)),
                            content: const Text('Periksa kembali koneksi WiFi / Cellular Data Anda!'),
                            actions: <Widget>[FlatButton(
                              child: Text('Keluar'),
                              onPressed: ()=> exit(0),
                            )],
                          );
                        }

                        return Consumer<CoronaProvider>(
                          builder: (context, data, _) {
                            return Column(
                              children: <Widget>[
                                Flexible(
                                  flex: 1,
                                  child: Indonesia(height: height, data: data,),
                                ),

                              ],
                            );
                          },
                        );
                      },
                    ),
                  ),
                ),
//            Row(
//              mainAxisAlignment: MainAxisAlignment.center,
//              children: [
//                Container(
//                  margin: const EdgeInsets.only(top: 6),
//                  child: Text(
//                    'INFO COVID-19 : \n Nomor Pelayanan Darurat : 117 \n Sumber : https://covid19.kemkes.go.id/',
//                    style: TextStyle(
//                      fontSize: 16,
//                      fontWeight: FontWeight.w400,
//                      color: Colors.lightGreen[800],
//                    ),
//                    textAlign: TextAlign.center,
//                  ),
//                ),
//              ],
//            ),
      ),
    );
  }
}