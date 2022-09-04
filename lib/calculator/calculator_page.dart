import 'package:flutter/material.dart';

String showText = "";
String number2 = "";
String number1 = "";
int result = 0;

class CalculatorPage extends StatefulWidget {
  const CalculatorPage({Key? key}) : super(key: key);

  @override
  State<CalculatorPage> createState() => _CalculatorPageState();
}

class _CalculatorPageState extends State<CalculatorPage> {

  void printNonUsedMessage(){
    print("Bu butonlar istenmemistir ama eklecektir. Sıfırmak için AC butonu tahsis edilmistir.");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Calculator"),
        backgroundColor: Colors.black,
      ),
      body: Container(
        color: Colors.black45,
        child: Column(
          children: [
            resultText(),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 6.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    width: 80,
                    height: 60,
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          showText = "0";
                          number2 = "0";
                          number1 = "0";
                          result = 0;
                        });
                      },
                      style: ElevatedButton.styleFrom(primary: Colors.black),
                      child: const Text("AC"),
                    ),
                  ),
                  SizedBox(
                    width: 80,
                    height: 60,
                    child: ElevatedButton(
                      onPressed: () {
                        printNonUsedMessage();
                      },
                      style: ElevatedButton.styleFrom(primary: Colors.black),
                      child: const Text("SIL"),
                    ),
                  ),
                  SizedBox(
                    width: 80,
                    height: 60,
                    child: ElevatedButton(
                      onPressed: () {
                        printNonUsedMessage();
                      },
                      style: ElevatedButton.styleFrom(primary: Colors.black),
                      child: const Text("."),
                    ),
                  ),
                  SizedBox(
                    width: 80,
                    height: 60,
                    child: ElevatedButton(
                      onPressed: () {
                        printNonUsedMessage();
                      },
                      style: ElevatedButton.styleFrom(primary: Colors.black),
                      child: const Text("/"),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 6.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    width: 80,
                    height: 60,
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          number1 += "7";
                          showText = number1;
                        });
                      },
                      style: ElevatedButton.styleFrom(primary: Colors.black),
                      child: const Text("7"),
                    ),
                  ),
                  SizedBox(
                    width: 80,
                    height: 60,
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          number1 += "8";
                          showText = number1;
                        });
                      },
                      style: ElevatedButton.styleFrom(primary: Colors.black),
                      child: const Text("8"),
                    ),
                  ),
                  SizedBox(
                    width: 80,
                    height: 60,
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          number1 += "9";
                          showText = number1;
                        });
                      },
                      style: ElevatedButton.styleFrom(primary: Colors.black),
                      child: const Text("9"),
                    ),
                  ),
                  SizedBox(
                    width: 80,
                    height: 60,
                    child: ElevatedButton(
                      onPressed: () {
                        printNonUsedMessage();
                      },
                      style: ElevatedButton.styleFrom(primary: Colors.black),
                      child: const Text("x"),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 6.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    width: 80,
                    height: 60,
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          number1 += "4";
                          showText = number1;
                        });
                      },
                      style: ElevatedButton.styleFrom(primary: Colors.black),
                      child: const Text("4"),
                    ),
                  ),
                  SizedBox(
                    width: 80,
                    height: 60,
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          number1 += "5";
                          showText = number1;
                        });
                      },
                      style: ElevatedButton.styleFrom(primary: Colors.black),
                      child: const Text("5"),
                    ),
                  ),
                  SizedBox(
                    width: 80,
                    height: 60,
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          number1 += "6";
                          showText = number1;
                        });
                      },
                      style: ElevatedButton.styleFrom(primary: Colors.black),
                      child: const Text("6"),
                    ),
                  ),
                  SizedBox(
                    width: 80,
                    height: 60,
                    child: ElevatedButton(
                      onPressed: () {
                        printNonUsedMessage();
                      },
                      style: ElevatedButton.styleFrom(primary: Colors.black),
                      child: const Text("-"),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 6.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    width: 80,
                    height: 60,
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          number1 += "1";
                          showText = number1;
                        });
                      },
                      style: ElevatedButton.styleFrom(primary: Colors.black),
                      child: const Text("1"),
                    ),
                  ),
                  SizedBox(
                    width: 80,
                    height: 60,
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          number1 += "2";
                          showText = number1;
                        });
                      },
                      style: ElevatedButton.styleFrom(primary: Colors.black),
                      child: const Text("2"),
                    ),
                  ),
                  SizedBox(
                    width: 80,
                    height: 60,
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          number1 += "3";
                          showText = number1;
                        });
                        print(
                            "n1 = $number1\n n2 = $number2 \n result = $result \n");
                      },
                      style: ElevatedButton.styleFrom(primary: Colors.black),
                      child: const Text("3"),
                    ),
                  ),
                  SizedBox(
                    width: 80,
                    height: 60,
                    child: ElevatedButton(
                      onPressed: () {
                        print(
                            "once n1 = $number1\n n2 = $number2 \n result = $result \n");
                        setState(() {
                          number2 = number1;
                          number1 = "";
                          // result = number1 + number2;
                          showText = "+";
                        });
                        print(
                            "sonra n1 = $number1\n n2 = $number2 \n result = $result \n\n");
                      },
                      style: ElevatedButton.styleFrom(primary: Colors.black),
                      child: const Text("+"),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                      width: 180,
                      height: 60,
                      child: ElevatedButton(
                          onPressed: () {
                            setState(() {
                              number1 += "0";
                              showText = number1;
                            });
                          },
                          style:
                              ElevatedButton.styleFrom(primary: Colors.black),
                          child: const Text("0"))),
                  SizedBox(
                      width: 180,
                      height: 60,
                      child: ElevatedButton(
                          onPressed: () {
                            setState(() {
                              if (number2 == "") {
                                number2 = "0";
                              }
                              result +=
                                  (int.parse(number2) + int.parse(number1));
                              showText = result.toString();

                              number2 = "";
                              number1 = "";
                            });
                          },
                          style:
                              ElevatedButton.styleFrom(primary: Colors.black),
                          child: const Text("=")))
                ],
              ),
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}

class resultText extends StatelessWidget {
  const resultText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.black26,
        width: 400,
        height: 350,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              showText,
              style: Theme.of(context).textTheme.headline2,
            ),
          ],
        ));
  }
}
