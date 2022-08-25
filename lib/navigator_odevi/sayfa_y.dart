import 'package:flutter/material.dart';
import 'package:tasarim_calismasi_food/navigator_odevi/anasayfa.dart';
class SayfaY extends StatefulWidget {
  const SayfaY({Key? key}) : super(key: key);

  @override
  State<SayfaY> createState() => _SayfaYState();
}

class _SayfaYState extends State<SayfaY> {
  final String sayfaAGit="Anasayfaya Dön";
  final String title = "SAYFA Y";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        centerTitle:true,
        backgroundColor: Colors.black,
        leading:  IconButton(icon: Icon(Icons.arrow_back_ios), onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => Anasayfa(),));
        },),
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const Anasayfa(),));
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.blueAccent,
                onPrimary: Colors.white,
                shadowColor: Colors.black,
                elevation: 3,
                minimumSize: const Size(150, 40), //////// HERE
              ),
              child: Text(sayfaAGit),
            ),

          ],
        ),
      ),
    );
  }
}
