import 'package:flutter/material.dart';

class SwitchAndSlidersWidget extends StatefulWidget {
  const SwitchAndSlidersWidget({super.key, title});
  @override
  State<SwitchAndSlidersWidget> createState() => _SwitchAndSlidersWidgetState();
}

class _SwitchAndSlidersWidgetState extends State<SwitchAndSlidersWidget> {
  bool isSwitchOn = false;
  Color bulbColor = Colors.black;
  Color textColor = Colors.white;
  Color bgColor = Colors.black;
  double sliderValue = 50.0;
  double sliders = 5.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        elevation: 5,
        backgroundColor: Color.fromARGB(255, 200, 253, 255),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text("Lesson on Sliders and Switches"),
            Icon(
              Icons.lightbulb,
              color: bulbColor,
            )
          ],
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(18),
            child: Column(
              children: [
                Text("Working with Switchess",
                    style: TextStyle(color: textColor, fontSize: 25)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    // Switch(
                    //     // set the color of the track (the area behind the thumb)
                    //     activeColor: const Color.fromARGB(
                    //         255, 100, 255, 105), // switch is ON
                    //     inactiveThumbColor: const Color.fromARGB(
                    //         255, 255, 0, 0), // switch is OFF
                    //     //set the color of the track (the area behind the thumb)
                    //     activeTrackColor:
                    //         const Color.fromARGB(255, 93, 107, 77),
                    //     inactiveTrackColor: Colors.grey,
                    //     // set custom images for the thumb (the circular part of the switch)
                    //     // activeThumbImage: AssetImage('assets/on_icon.png'),
                    //     // inactiveThumbImage: AssetImage('assets/off_icon.png'),
                    //     // materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    //     value: isSwitchOn,
                    //     onChanged: (value) {
                    //       setState(() {
                    //         isSwitchOn = value;
                    //       });
                    //     }),
                    Switch(
                        activeColor: const Color.fromARGB(255, 100, 255, 105),
                        inactiveThumbColor: Colors.red,
                        activeTrackColor:
                            const Color.fromARGB(255, 93, 107, 77),
                        inactiveTrackColor: Color.fromARGB(255, 72, 46, 46),
                        value: isSwitchOn,
                        onChanged: (value) {
                          setState(() {
                            isSwitchOn = value;
                            bulbColor =
                                isSwitchOn ? Colors.yellow : Colors.black;
                            bgColor = isSwitchOn ? Colors.white : Colors.black;
                            textColor =
                                isSwitchOn ? Colors.black : Colors.white;
                          });
                          // Update the theme mode based on the switch state
                          if (isSwitchOn) {
                            ThemeMode.dark;
                          } else {
                            ThemeMode.light;
                          }
                        }),
                    Text(
                        isSwitchOn
                            ? 'Light Mode Activated'
                            : 'Dark Mode Activated',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.pink,
                          fontWeight: FontWeight.bold,
                        )),
                    // SwitchListTile(
                    //     title: Text('Switch Modes'),
                    //     value: isSwitchOn,
                    //     activeColor: Colors.green,
                    //     inactiveThumbColor: Colors.red,
                    //     onChanged: (value) {
                    //       setState(() {
                    //         isSwitchOn = value;
                    //       });
                    //     })
                  ],
                ),
                Column(
                  children: [
                    const SizedBox(
                      height: 50,
                    ),
                    Text(" Working with Sliders",
                        style: TextStyle(color: textColor, fontSize: 25)),
                    Slider(
                      value: sliderValue,
                      onChanged: (value) {
                        setState(() {
                          sliderValue = value;
                        });
                      },
                      min: 0,
                      max: 100,
                      divisions: 100,
                      label: sliderValue.round().toString(),
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    Slider(
                      value: sliders,
                      onChanged: (value) {
                        setState(() {
                          sliders = value;
                        });
                      },
                      min: 0,
                      max: 20,
                      divisions: 20,
                      // label: sliders.round().toString(),
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
