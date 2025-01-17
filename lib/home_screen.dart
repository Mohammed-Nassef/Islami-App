import 'package:flutter/material.dart';
import 'package:flutter_islami/app_theme.dart';
import 'package:flutter_islami/tabs/hadeth/hadeth.dart';
import 'package:flutter_islami/tabs/quran/quran.dart';
import 'package:flutter_islami/tabs/radio/radio.dart';
import 'package:flutter_islami/tabs/sebha/sebha.dart';
import 'package:flutter_islami/tabs/time/time.dart';
import 'package:flutter_svg/svg.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = "/home";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int current = 0;
  List<Widget> tabs = [
    Qurantabs(),
    hadethtabs(),
    Sebhatab(),
    Radiotab(),
    Timetabs()
  ];
  List<String> backgroundImageTab = [
    "background_quran",
    "background_hadeth",
    "background_sebha",
    "background_radio",
    "background_time"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage(
                    "assets/images/${backgroundImageTab[current]}.png"))),
        child: Column(children: [
          Image.asset(
            "assets/images/logo.png",
            height: MediaQuery.sizeOf(context).height * 0.18,
          ),
          Expanded(child: tabs[current]),
        ]),
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: current,
          onTap: (value) {
            current = value;
            setState(() {});
          },
          items: [
            BottomNavigationBarItem(
              icon: SvgPicture.asset("assets/icon/quran.svg"),
              activeIcon: SvgPicture.asset("assets/icon/quran.svg",
                  colorFilter:
                      const ColorFilter.mode(Colors.white, BlendMode.srcIn)),
              label: "Quran",
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset("assets/icon/hadeth.svg"),
              activeIcon: SvgPicture.asset("assets/icon/hadeth.svg",
                  colorFilter:
                      const ColorFilter.mode(Colors.white, BlendMode.srcIn)),
              label: "hadeth",
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset("assets/icon/sebha.svg"),
              activeIcon: SvgPicture.asset("assets/icon/sebha.svg",
                  colorFilter:
                      const ColorFilter.mode(Colors.white, BlendMode.srcIn)),
              label: "sebha",
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset("assets/icon/radio.svg"),
              activeIcon: SvgPicture.asset("assets/icon/radio.svg",
                  colorFilter:
                      const ColorFilter.mode(Colors.white, BlendMode.srcIn)),
              label: "sebha",
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset("assets/icon/time.svg"),
              activeIcon: SvgPicture.asset(
                "assets/icon/time.svg",
                colorFilter:
                    const ColorFilter.mode(Colors.white, BlendMode.srcIn),
              ),
              label: "time",
            ),
          ]),
    );
  }
}
