import 'package:flutter/material.dart';
import 'package:flutter_islami/app_theme.dart';

class RadioButton extends StatefulWidget {
  @override
  State<RadioButton> createState() => _RadioButtonState();
}

class _RadioButtonState extends State<RadioButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.sizeOf(context).height * 0.15,
      // padding: EdgeInsets.only(top: 25),
      decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage("assets/images/sound_mute.png")),
          color: AppTheme.primary,
          borderRadius: BorderRadius.circular(10)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            "Radio Ibrahim Al-Akdar",
            style: TextStyle(
                color: AppTheme.black,
                fontSize: 20,
                fontWeight: FontWeight.bold),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Spacer(
                flex: 2,
              ),
              IconButton(
                  iconSize: 40,
                  style: IconButton.styleFrom(
                    foregroundColor: AppTheme.black,
                  ),
                  onPressed: () {
                    IconButton(
                      iconSize: 40,
                      style: IconButton.styleFrom(
                        foregroundColor: AppTheme.black,
                      ),
                      onPressed: () {
                        setState(() {});
                      },
                      icon: Icon(Icons.pause),
                    );
                    setState(() {});
                  },
                  icon: Icon(Icons.play_arrow_rounded)),
              IconButton(
                  iconSize: 40,
                  style: IconButton.styleFrom(foregroundColor: AppTheme.black),
                  onPressed: () {
                    IconButton(
                        iconSize: 40,
                        style: IconButton.styleFrom(
                            foregroundColor: AppTheme.black),
                        onPressed: () {
                          setState(() {});
                        },
                        icon: Icon(Icons.volume_off_sharp));
                    setState(() {});
                  },
                  icon: Icon(Icons.volume_up)),
              Spacer(),
            ],
          )
        ],
      ),
    );
  }
}
