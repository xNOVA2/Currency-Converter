// ignore_for_file: file_names

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class CurrencyAppp extends StatefulWidget {
  const CurrencyAppp({super.key});

  @override
  State<CurrencyAppp> createState() => _CurrencyAppState();
}

class _CurrencyAppState extends State<CurrencyAppp> {
  @override
  double currencyValue = 0;

  @override
  void initState() {
    super.initState();
  }

  TextEditingController textEditing = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text("currency convsaerter App"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'PKR ${currencyValue != 0 ? currencyValue.toStringAsFixed(2) : 0}',
              style: const TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.w400,
                  color: Colors.white),
            ),
            Padding(
              padding: const EdgeInsets.all(23.0),
              child: TextField(
                controller: textEditing,
                keyboardType:
                    const TextInputType.numberWithOptions(decimal: true),
                decoration: const InputDecoration(
                    border: UnderlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.all(Radius.circular(12))),
                    contentPadding: EdgeInsets.fromLTRB(10, 16, 14, 10),
                    suffixIcon: Icon(
                      Icons.monetization_on_outlined,
                      color: Colors.black,
                    ),
                    filled: true,
                    fillColor: Colors.white,
                    hintText: "Enter amount in USD",
                    hintStyle: TextStyle(
                      color: Colors.black,
                    )),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 22, right: 22),
              child: TextButton(
                style: const ButtonStyle(
                    padding: MaterialStatePropertyAll(EdgeInsets.all(10)),
                    minimumSize:
                        MaterialStatePropertyAll(Size(double.infinity, 20)),
                    backgroundColor: MaterialStatePropertyAll(Colors.white),
                    foregroundColor: MaterialStatePropertyAll(Colors.black)),
                onPressed: () {
                  setState(() {
                    currencyValue = double.parse(textEditing.text) * 288.630;
                  });
                },
                child: const Text(
                  "Convert",
                  style: TextStyle(fontSize: 14),
                ),
              ),
            )
          ],
        ),
      ),
    );
    ;
  }
}
