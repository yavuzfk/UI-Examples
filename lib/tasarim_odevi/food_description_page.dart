import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class FoodDescriptionPage extends StatefulWidget {
  const FoodDescriptionPage({Key? key}) : super(key: key);

  @override
  State<FoodDescriptionPage> createState() => _FoodDescriptionPageState();
}

class _FoodDescriptionPageState extends State<FoodDescriptionPage>
    with Utilities {
  bool isClicked = true;

  void checkClick() {
    setState(() {
      isClicked = !isClicked;
    });
  }

  @override
  Widget build(BuildContext context) {
    var languageData = AppLocalizations.of(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 26.0, bottom: 16),
              child: Image.asset("images/food.png"),
            ),
            Container(
              alignment: Alignment.centerLeft,
              child: Text(
                languageData!.yemekBaslik,
                textAlign: TextAlign.left,
                style: const TextStyle(
                  fontSize: 36,
                  fontWeight: FontWeight.bold,
                  fontFamily: "Lato",
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, bottom: 40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children:  [
                      const Icon(
                        Icons.star,
                        color: Colors.deepOrange,
                      ),
                      Text(languageData.puan)
                    ],
                  ),
                  Row(
                    children:  [
                      const Icon(
                        Icons.local_fire_department,
                        color: Colors.deepOrange,
                      ),
                      Text(languageData.kaloriDegeri)
                    ],
                  ),
                  Row(
                    children:  [
                      const Icon(
                        Icons.timelapse_outlined,
                        color: Colors.black,
                      ),
                      Text(languageData.pisirmeSuresi)
                    ],
                  ),
                ],
              ),
            ),
            Container(
              alignment: Alignment.bottomLeft,
              child:  Text(
                languageData.aciklamaBaslik,
                style: const TextStyle(
                  fontFamily: "Lato",
                  fontSize: 25,
                ),
              ),
            ),
             Padding(
              padding: const EdgeInsets.only(top: 13, bottom: 10),
              child: Text(languageData.aciklamaYazisi + languageData.aciklamaYazisi,
                style: const TextStyle(
                    fontFamily: "Lato_Light", height: 1.2, letterSpacing: 1.0),
              ),
            ),
            Container(
              alignment: Alignment.bottomLeft,
              child: Text(
                languageData.malzemelerBaslik,
                style: const TextStyle(
                  fontFamily: "Lato",
                  fontSize: 20,
                ),
              ),
            ),
            Container(
              alignment: Alignment.bottomLeft,
              child:  Padding(
                padding: EdgeInsets.only(top: 13),
                child: Text(
                  languageData.malzemeListesi,
                  style: const TextStyle(
                      fontFamily: "Lato_Light",
                      height: 1.2,
                      letterSpacing: 1.0),
                ),
              ),
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.only(left: 10, bottom: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {
                      checkClick();
                    },
                    iconSize: 40,
                    icon: isClicked ? favouriteIcon : toppedFavouriteIcon,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      primary: Colors.black45,
                      onPrimary: Colors.white,
                      shadowColor: Colors.black,
                      elevation: 3,
                      minimumSize: const Size(250, 40), //////// HERE
                    ),
                    child:  Text(languageData.buttonText),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class Utilities {
  final Icon favouriteIcon = Icon(Icons.favorite_border);
  final Icon toppedFavouriteIcon = Icon(Icons.favorite);
}
