import 'package:flutter/material.dart';
import 'package:tasarim_calismasi_food/navigator_odevi/sayfa_b.dart';

class SayfaA extends StatefulWidget {
  const SayfaA({Key? key}) : super(key: key);

  @override
  State<SayfaA> createState() => _SayfaAState();
}

class _SayfaAState extends State<SayfaA> {
  final String sayfaBGit="Git --> B";
  final String title = "SAYFA A";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      centerTitle:true,
        backgroundColor: Colors.redAccent,
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const SayfaB(),));
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.green,
                onPrimary: Colors.white,
                shadowColor: Colors.black,
                elevation: 3,
                minimumSize: const Size(150, 40), //////// HERE
              ),
              child: Text(sayfaBGit),
            ),

          ],
        ),
      ),
    );
  }
}
