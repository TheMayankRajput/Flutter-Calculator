import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

class calculatorpage extends StatefulWidget {
  @override
  State<calculatorpage> createState() => _calculatorpageState();
}

class _calculatorpageState extends State<calculatorpage> {
  var userinput = '';
  var answer = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            height: double.infinity,
            width: double.infinity,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                      height: 300,
                      width: double.infinity,
                      color: Colors.black,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 10),
                            child: SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              reverse: true,
                              child: Container(
                                  child: Text(userinput,
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 60,
                                        fontWeight: FontWeight.w600,
                                      ))),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 10.0),
                            child: Container(
                                child: Text(answer,
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 40,
                                        fontWeight: FontWeight.w400))),
                          )
                        ],
                      )),
                  Container(
                      height: 500,
                      color: Colors.black,
                      child: GridView.count(
                        crossAxisCount: 4,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Container(
                                height: 10,
                                width: 10,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  color: Colors.grey.shade900,
                                ),
                                child: TextButton(
                                    onPressed: () {
                                      setState(() {
                                        userinput = '';
                                        answer = '0';
                                      });
                                    },
                                    child: Text("AC",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 22,
                                          fontWeight: FontWeight.w600,
                                        )))),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Container(
                                height: 10,
                                width: 10,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  color: Colors.grey.shade900,
                                ),
                                child: TextButton(
                                    onPressed: () {
                                      setState(() {
                                        userinput += '%';
                                      });
                                    },
                                    child: Text("%",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 28,
                                          fontWeight: FontWeight.w600,
                                        )))),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Container(
                                height: 10,
                                width: 10,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  color: Colors.grey.shade900,
                                ),
                                child: TextButton(
                                    onPressed: () {
                                      setState(() {
                                        if (userinput.isEmpty) {
                                          userinput = userinput;
                                        } else {
                                          userinput = userinput.substring(
                                              0, userinput.length - 1);
                                        }
                                      });
                                    },
                                    child: Icon(
                                      Icons.backspace_outlined,
                                      size: 22,
                                      // weight: 100,
                                      color: Colors.white,
                                    ))),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Container(
                                height: 10,
                                width: 10,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  color: Colors.grey.shade900,
                                ),
                                child: TextButton(
                                    onPressed: () {
                                      setState(() {
                                        userinput += '/';
                                      });
                                    },
                                    child: Text("/",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 22,
                                          fontWeight: FontWeight.w600,
                                        )))),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Container(
                                height: 10,
                                width: 10,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  color: Colors.grey.shade800,
                                ),
                                child: TextButton(
                                    onPressed: () {
                                      setState(() {
                                        userinput += '7';
                                      });
                                    },
                                    child: Text("7",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 22,
                                          fontWeight: FontWeight.w600,
                                        )))),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Container(
                                height: 10,
                                width: 10,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  color: Colors.grey.shade800,
                                ),
                                child: TextButton(
                                    onPressed: () {
                                      setState(() {
                                        userinput += '8';
                                      });
                                    },
                                    child: Text("8",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 28,
                                          fontWeight: FontWeight.w600,
                                        )))),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Container(
                                height: 10,
                                width: 10,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  color: Colors.grey.shade800,
                                ),
                                child: TextButton(
                                    onPressed: () {
                                      setState(() {
                                        userinput += '9';
                                      });
                                    },
                                    child: Text("9",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 28,
                                          fontWeight: FontWeight.w600,
                                        )))),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Container(
                                height: 10,
                                width: 10,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  color: Colors.grey.shade900,
                                ),
                                child: TextButton(
                                    onPressed: () {
                                      setState(() {
                                        userinput += 'X';
                                      });
                                    },
                                    child: Icon(Icons.close,
                                        color: Colors.white, size: 30))),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Container(
                                height: 10,
                                width: 10,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  color: Colors.grey.shade800,
                                ),
                                child: TextButton(
                                    onPressed: () {
                                      setState(() {
                                        userinput += '4';
                                      });
                                    },
                                    child: Text("4",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 22,
                                          fontWeight: FontWeight.w600,
                                        )))),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Container(
                                height: 10,
                                width: 10,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  color: Colors.grey.shade800,
                                ),
                                child: TextButton(
                                    onPressed: () {
                                      setState(() {
                                        userinput += '5';
                                      });
                                    },
                                    child: Text("5",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 28,
                                          fontWeight: FontWeight.w600,
                                        )))),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Container(
                                height: 10,
                                width: 10,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  color: Colors.grey.shade800,
                                ),
                                child: TextButton(
                                    onPressed: () {
                                      setState(() {
                                        userinput += '6';
                                      });
                                    },
                                    child: Text("6",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 28,
                                          fontWeight: FontWeight.w600,
                                        )))),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Container(
                                height: 10,
                                width: 10,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  color: Colors.grey.shade900,
                                ),
                                child: TextButton(
                                    onPressed: () {
                                      setState(() {
                                        userinput += '-';
                                      });
                                    },
                                    child: Icon(Icons.remove,
                                        color: Colors.white, size: 30))),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Container(
                                height: 10,
                                width: 10,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  color: Colors.grey.shade800,
                                ),
                                child: TextButton(
                                    onPressed: () {
                                      setState(() {
                                        userinput += '1';
                                      });
                                    },
                                    child: Text("1",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 22,
                                          fontWeight: FontWeight.w600,
                                        )))),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Container(
                                height: 10,
                                width: 10,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  color: Colors.grey.shade800,
                                ),
                                child: TextButton(
                                    onPressed: () {
                                      setState(() {
                                        userinput += '2';
                                      });
                                    },
                                    child: Text("2",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 28,
                                          fontWeight: FontWeight.w600,
                                        )))),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Container(
                                height: 10,
                                width: 10,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  color: Colors.grey.shade800,
                                ),
                                child: TextButton(
                                    onPressed: () {
                                      setState(() {
                                        userinput += '3';
                                      });
                                    },
                                    child: Text("3",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 28,
                                          fontWeight: FontWeight.w600,
                                        )))),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Container(
                                height: 10,
                                width: 10,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  color: Colors.grey.shade900,
                                ),
                                child: TextButton(
                                    onPressed: () {
                                      setState(() {
                                        userinput += '+';
                                      });
                                    },
                                    child: Icon(Icons.add,
                                        color: Colors.white, size: 30))),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Container(
                                height: 10,
                                width: 10,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  color: Colors.grey.shade800,
                                ),
                                child: TextButton(
                                    onPressed: () {
                                      setState(() {
                                        if (userinput.isEmpty) {
                                          userinput += '0';
                                        } else if (userinput == '0') {
                                          userinput = userinput;
                                        } else {
                                          userinput += '00';
                                        }
                                      });
                                    },
                                    child: Text("00",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 22,
                                          fontWeight: FontWeight.w600,
                                        )))),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Container(
                                height: 10,
                                width: 10,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  color: Colors.grey.shade800,
                                ),
                                child: TextButton(
                                    onPressed: () {
                                      setState(() {
                                        if (userinput.isEmpty) {
                                          userinput += '0';
                                        } else if (userinput == '0') {
                                          userinput = userinput;
                                        } else {
                                          userinput += '0';
                                        }
                                      });
                                    },
                                    child: Text("0",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 22,
                                          fontWeight: FontWeight.w600,
                                        )))),
                          ),
                          Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Container(
                                  height: 10,
                                  width: 10,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    color: Colors.grey.shade800,
                                  ),
                                  child: Center(
                                    child: TextButton(
                                      onPressed: () {
                                        setState(() {
                                          userinput += '.';
                                        });
                                      },
                                      child: Text(".",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 28,
                                            fontWeight: FontWeight.w600,
                                          )),
                                    ),
                                  ))),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Container(
                                height: 10,
                                width: 10,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  color: Colors.orange,
                                ),
                                child: TextButton(
                                    onPressed: () {
                                      setState(() {
                                        equalpressed();
                                      });
                                    },
                                    child: Text("=",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 40,
                                            fontWeight: FontWeight.w300)))),
                          ),
                        ],
                      ))
                ],
              ),
            )));
  }

  void equalpressed() {
    try {
      String finaluserinput = userinput;
      finaluserinput = userinput.replaceAll('X', '*');
      Parser p = Parser();
      Expression exp = p.parse(finaluserinput);
      ContextModel cm = ContextModel();
      double eval = exp.evaluate(EvaluationType.REAL, cm);
      answer = eval.toString();
    } catch (e) {
      answer = 'Error';
    }
  }
}
