import 'package:flutter/material.dart';
import 'package:tasarim_calismasi_food/navigator_odevi/sayfa_y.dart';
class SayfaX extends StatefulWidget {
  const SayfaX({Key? key}) : super(key: key);

  @override
  State<SayfaX> createState() => _SayfaXState();
}

class _SayfaXState extends State<SayfaX> {
  final String sayfaYGit="Git --> Y";
  final String title = "SAYFA X";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        centerTitle:true,
        backgroundColor: Colors.yellowAccent,
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const SayfaY()));
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.black,
                onPrimary: Colors.white,
                shadowColor: Colors.black,
                elevation: 3,
                minimumSize: const Size(150, 40), //////// HERE
              ),
              child: Text(sayfaYGit,),
            ),

          ],
        ),
      ),
    );
  }
}
