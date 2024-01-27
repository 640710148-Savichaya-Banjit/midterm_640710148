import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class my_Calculator extends StatefulWidget {
  const my_Calculator({super.key});

  @override
  State<my_Calculator> createState() => _my_CalculatorState();
}

class _my_CalculatorState extends State<my_Calculator> {
  var number = '';

  Widget build_button(String text, Color color) {
    return InkWell(
      onTap: () {
        setState(() {
          if (number == '0') {
            if (text != '÷' && text != 'x' && text != '-' && text != '+') {
              number = text;
            } else if (text == '÷' ||
                text == 'x' ||
                text == '-' ||
                text == '+') {
              number = '0';
            }
          } else if (number != '0') {
            number = number + '' + text;
          }
        });
      },
      child: Container(
        height: 70.0,
        width: 120.0,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(1.0),
        ),
        child: Text(
          text,
          style: GoogleFonts.notoSansThai(fontSize: 30.0),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      number,
                      style: GoogleFonts.notoSansThai(fontSize: 50.0),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Container(
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: InkWell(
                          onTap: () {
                            setState(() {
                              number = '0';
                            });
                          },
                          child: Container(
                            height: 70.0,
                            width: 120.0,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: Colors.black12,
                              borderRadius: BorderRadius.circular(1.0),
                            ),
                            child: Text(
                              'C',
                              style: GoogleFonts.notoSansThai(fontSize: 30.0),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: InkWell(
                          onTap: () {
                            setState(() {
                              number = '0';
                            });
                          },
                          child: Container(
                              height: 70.0,
                              width: 120.0,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  color: Colors.black12,
                                  borderRadius: BorderRadius.circular(1.0)),
                              child: Icon(
                                Icons.backspace_outlined,
                                size: 30.0,
                              )),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: build_button('7', Colors.orangeAccent),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: build_button('8', Colors.orangeAccent),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: build_button('9', Colors.orangeAccent),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: build_button('÷', Colors.black12),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: build_button('4', Colors.orangeAccent),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: build_button('5', Colors.orangeAccent),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: build_button('6', Colors.orangeAccent),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: build_button('x', Colors.black12),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: build_button('1', Colors.orangeAccent),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: build_button('2', Colors.orangeAccent),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: build_button('3', Colors.orangeAccent),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: build_button('-', Colors.black12),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  flex: 3,
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: build_button('0', Colors.orangeAccent),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: build_button('+', Colors.black12),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          number = '0';
                        });
                      },
                      child: Container(
                        height: 70.0,
                        width: 120.0,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Colors.orange,
                          borderRadius: BorderRadius.circular(1.0),
                        ),
                        child: Text(
                          '=',
                          style: GoogleFonts.notoSansThai(fontSize: 30.0),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
