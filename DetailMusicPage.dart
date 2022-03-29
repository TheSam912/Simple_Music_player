// ignore_for_file: no_logic_in_create_state

import 'dart:async';

import 'package:flutter/material.dart';

// ignore: must_be_immutable
class DetailMusicPage extends StatefulWidget {
  // ignore: non_constant_identifier_names
  String detail_name;

  // ignore: non_constant_identifier_names
  String detail_artist;

  // ignore: non_constant_identifier_names
  String detail_cover;

  DetailMusicPage(this.detail_name, this.detail_artist, this.detail_cover);

  @override
  _DetailMusicPageState createState() =>
      _DetailMusicPageState(detail_name, detail_artist, detail_cover);
}

class _DetailMusicPageState extends State<DetailMusicPage> {
  // ignore: non_constant_identifier_names
  String detail_name;

  // ignore: non_constant_identifier_names
  String detail_artist;

  // ignore: non_constant_identifier_names
  String detail_cover;

  _DetailMusicPageState(
      this.detail_name, this.detail_artist, this.detail_cover);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
            color: Colors.black,
            image: DecorationImage(
                colorFilter: ColorFilter.mode(
                    Colors.black.withOpacity(0.2), BlendMode.dstATop),
                fit: BoxFit.cover,
                image: NetworkImage(detail_cover))),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
                color: Colors.transparent,
                margin: const EdgeInsets.all(15),
                child: Container(
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      color: Colors.blueAccent,
                      borderRadius: BorderRadius.circular(300)),
                  child: Container(
                    width: 300,
                    height: 300,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(300),
                      child: Image(
                          fit: BoxFit.cover, image: NetworkImage(detail_cover)),
                    ),
                  ),
                )),
            const SizedBox(
              height: 15,
            ),
            Text(
              detail_name,
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              detail_artist,
              style: const TextStyle(
                color: Colors.grey,
                fontSize: 16,
              ),
            ),
            Container(
                margin: const EdgeInsets.only(top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      "Volume",
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                )),
            Image(image: AssetImage("assets/images/music.gif"))
          ],
        ),
      )),
    );
  }
}
