import 'package:flutter/material.dart';
import 'package:flutter_islami/app_theme.dart';
import 'package:flutter_islami/tabs/radio/radio_button.dart';
import 'package:flutter_islami/tabs/radio/reciters_button.dart';

class Radiotab extends StatefulWidget {
  @override
  State<Radiotab> createState() => _RadiotabState();
}

class _RadiotabState extends State<Radiotab> {
  List<Widget> radio = [
    RadioButton(),
    RadioButton(),
    RadioButton(),
    RadioButton(),
    RadioButton(),
    RadioButton(),
    RadioButton(),
  ];

  List<Widget> reciters = [
    RecitersButton(),
    RecitersButton(),
    RecitersButton(),
    RecitersButton(),
    RecitersButton(),
    RecitersButton(),
    RecitersButton(),
  ];

  List<Widget> cheack = [
    RadioButton(),
    RadioButton(),
    RadioButton(),
    RadioButton(),
    RadioButton(),
    RadioButton(),
    RadioButton(),
  ];

  @override
  Widget build(BuildContext context) {
    // Container(child: Text("Radio"),),Container(child: Text("Reciters"),)
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(children: [
            Expanded(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(10),
                            topLeft: Radius.circular(10))),
                    // padding: EdgeInsets.symmetric(vertical: 16),

                    backgroundColor:
                        cheack == radio ? AppTheme.primary : AppTheme.black),
                onPressed: () {
                  cheack = radio;
                  setState(() {});
                },
                child: Text(
                  "Radio",
                  style: cheack == radio
                      ? TextStyle(color: AppTheme.black)
                      : TextStyle(color: AppTheme.white),
                ),
              ),
            ),
            Expanded(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(8),
                          topRight: Radius.circular(8)),
                    ),
                    // padding: EdgeInsets.symmetric(vertical: 16),

                    backgroundColor: (cheack == reciters)
                        ? AppTheme.primary
                        : AppTheme.black.withOpacity(0.7)),
                onPressed: () {
                  cheack = reciters;
                  setState(() {});
                },
                child: Text(
                  "Reciters",
                  style: cheack == reciters
                      ? TextStyle(color: AppTheme.black)
                      : TextStyle(color: AppTheme.white),
                ),
              ),
            ),
          ]),
          // SizedBox(height: 13),
          Expanded(
            child: ListView.separated(
              separatorBuilder: (context, index) => SizedBox(height: 13),
              itemBuilder: (context, index) => cheack[index],
              itemCount: 6,
            ),
          )
        ],
      ),
    );
  }
}
