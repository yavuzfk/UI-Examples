import 'package:flutter/material.dart';
import 'package:tasarim_calismasi_food/navigator_odevi/sayfa_y.dart';

class SayfaB extends StatefulWidget {
  const SayfaB({Key? key}) : super(key: key);

  @override
  State<SayfaB> createState() => _SayfaBState();
}

class _SayfaBState extends State<SayfaB> {
  final String sayfaYGit="Git --> Y";
  final String title = "SAYFA B";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        centerTitle:true,
        backgroundColor: Colors.green,
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const SayfaY(),));
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.black,
                onPrimary: Colors.white,
                shadowColor: Colors.black,
                elevation: 3,
                minimumSize: const Size(150, 40), //////// HERE
              ),
              child: Text(sayfaYGit),
            ),

          ],
        ),
      ),
    );
  }
}
