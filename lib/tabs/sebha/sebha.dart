import 'package:flutter/material.dart';
import 'package:flutter_islami/app_theme.dart';

class Sebhatab extends StatefulWidget {
  @override
  State<Sebhatab> createState() => _SebhatabState();
}

class _SebhatabState extends State<Sebhatab> {
  int counter = 0;
  double angle = 0;
  String zikr = "سبحان الله";
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Container(
            alignment: Alignment.center,
            // height: MediaQuery.sizeOf(context).height * 0.7,
            child: Text(
              "سَبِّحِ اسْمَ رَبِّكَ الأعلى",
              style: TextStyle(
                  color: AppTheme.white,
                  fontSize: 36,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
        Expanded(
          flex: 5,
          child: Stack(alignment: Alignment.center, children: [
            Container(
              child: Column(
                children: [
                  Image.asset("assets/images/Mask group.png"),
                  GestureDetector(
                    onTap: () {
                      counter++;
                      angle += 0.1;
                      tasbeh(counter);

                      setState(() {});
                    },
                    child: Transform.rotate(
                      angle: angle,
                      child: Image.asset(
                        "assets/images/SebhaBody 1.png",
                      ),
                    ),
                  )
                ],
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  zikr,
                  style: TextStyle(
                      color: AppTheme.white,
                      fontSize: 36,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  "${counter}",
                  style: TextStyle(
                      color: AppTheme.white,
                      fontSize: 36,
                      fontWeight: FontWeight.bold),
                ),
              ],
            )
          ]),
        )
      ],
    );
  }

  void tasbeh(int counter) {
    if (counter <= 33) {
      zikr = "سبحان الله";
    } else if (counter > 33 && counter <= 66) {
      zikr = "الحمد لله";
    } else if (counter > 66 && counter <= 99) {
      zikr = "الله أكبر";
    } else {
      clear();
    }
  }

  void clear() {
    counter = 0;
    zikr = "سبحان الله";
  }
}
