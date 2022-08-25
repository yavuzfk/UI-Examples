import 'package:flutter/material.dart';
import 'package:tasarim_calismasi_food/navigator_odevi/sayfa_a.dart';
import 'package:tasarim_calismasi_food/navigator_odevi/sayfa_x.dart';

class Anasayfa extends StatefulWidget {
  const Anasayfa({Key? key}) : super(key: key);

  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {
  final String sayfaAGit="Git --> A";
  final String sayfaXGit="Git --> X";
  final String anasayfa="ANASAYFA";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(anasayfa),centerTitle: true,),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const SayfaA(),));
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.redAccent,
                onPrimary: Colors.white,
                shadowColor: Colors.black,
                elevation: 3,
                minimumSize: const Size(150, 40), //////// HERE
              ),
              child: Text(sayfaAGit),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const SayfaX(),));
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.yellowAccent,
                onPrimary: Colors.white,
                shadowColor: Colors.black,
                elevation: 3,
                minimumSize: const Size(150, 40), //////// HERE
              ),
              child: Text(sayfaXGit,style: TextStyle(color: Colors.black26)),
            ),
          ],
        ),
      ),
    );
  }
}
