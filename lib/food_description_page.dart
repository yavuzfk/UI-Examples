import 'package:flutter/material.dart';

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
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 26.0, bottom: 16),
              child: Image.asset("images/food.png"),
            ),
            Container(
              alignment: Alignment.centerLeft,
              child: const Text(
                "Tavuk Tabagı",
                textAlign: TextAlign.left,
                style: TextStyle(
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
                    children: const [
                      Icon(
                        Icons.star,
                        color: Colors.deepOrange,
                      ),
                      Text("4.9")
                    ],
                  ),
                  Row(
                    children: const [
                      Icon(
                        Icons.local_fire_department,
                        color: Colors.deepOrange,
                      ),
                      Text("500 Calories")
                    ],
                  ),
                  Row(
                    children: const [
                      Icon(
                        Icons.timelapse_outlined,
                        color: Colors.black,
                      ),
                      Text("20-30 Dk")
                    ],
                  ),
                ],
              ),
            ),
            Container(
              alignment: Alignment.bottomLeft,
              child: const Text(
                "Açıklama",
                style: TextStyle(
                  fontFamily: "Lato",
                  fontSize: 25,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 13, bottom: 16),
              child: Text(
                "Lorem ipsum is simply dummy Lorem ipsum is simply dummy Lorem ipsum is simply dummy Lorem ips"
                "um is simply dummy Lorem ipsum is simply dummy  ",
                style: TextStyle(
                    fontFamily: "Lato_Light", height: 1.2, letterSpacing: 1.0),
              ),
            ),
            Container(
              alignment: Alignment.bottomLeft,
              child: const Text(
                "Malzemeler",
                style: TextStyle(
                  fontFamily: "Lato",
                  fontSize: 20,
                ),
              ),
            ),
            Container(
              alignment: Alignment.bottomLeft,
              child: const Padding(
                padding: EdgeInsets.only(top: 13),
                child: Text(
                  "- 1 Yumurta\n- 200gr Tavuk Fileto\n- 3 Biber",
                  style: TextStyle(
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
                    child: const Text("Yemek Tarifini Aç"),
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
