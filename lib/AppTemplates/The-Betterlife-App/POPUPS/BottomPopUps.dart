import 'package:classapp/AppTemplates/The-Betterlife-App/ImportsPath.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void showCustomBottomSheet(BuildContext context, Widget child,
    {double? height}) {
  showModalBottomSheet(
    elevation: 4,
    context: context,
    builder: (BuildContext context) {
      return SizedBox(
        height: height,
        child: CustomBottomSheet(child: child),
      );
    },
  );
}

void showHelpPopup(BuildContext context) {
  showCustomBottomSheet(context, HelpPopup(), height: 200);
}

void showCalendarPicker(BuildContext context) {
  showCustomBottomSheet(context, const CalendarPicker(), height: 300);
}

void showDropdownMenu(BuildContext context, Widget content, double height) {
  showCustomBottomSheet(
    context,
    DropdownMenu(content: content, height: height),
  );
}

class HelpPopup extends StatelessWidget {
  HelpPopup({
    super.key,
  });
  final List item = [
    {"text": "I forgot my PIN", "icon": Icons.lock, "route": "forgotPin"},
    {"text": "Get in touch with us", "icon": Icons.email, "route": ""},
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 21, vertical: 2),
          child: Text(
            "Having issues logging in?",
            style: TextStyle(fontSize: 21, fontWeight: FontWeight.w700),
          ),
        ),
        const Divider(
          height: 10,
          color: Color(0x77000000),
        ),
        SizedBox(
          height: 100,
          child: ListView.builder(
            itemCount: item.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.symmetric(horizontal: 21, vertical: 4),
                child: Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, item[index]["route"]);
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              CircleAvatar(
                                child: Icon(
                                  item[index]["icon"],
                                  size: 18,
                                  color: Theme.of(context).iconTheme.color,
                                ),
                              ),
                              const SizedBox(
                                width: 15,
                              ),
                              Text(
                                item[index]["text"],
                                style: const TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                          const Icon(
                            Icons.arrow_forward_ios_outlined,
                            size: 18,
                            color: Colors.black,
                          )
                        ],
                      ),
                    ),
                    if (index != item.length - 1)
                      const Divider(
                        height: 14,
                        color: Color(0x77000000),
                      ),
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}

class CalendarPicker extends StatefulWidget {
  const CalendarPicker({
    super.key,
  });

  @override
  State<CalendarPicker> createState() => _CalendarPickerState();
}

class _CalendarPickerState extends State<CalendarPicker> {
  DateTime selectedDate = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return CupertinoDatePicker(
      mode: CupertinoDatePickerMode.dateAndTime,
      initialDateTime: selectedDate,
      onDateTimeChanged: (DateTime newDateTime) {
        setState(() {
          selectedDate = newDateTime;
        });
      },
    );
  }
}

class DropdownMenu extends StatelessWidget {
  final Widget content;
  final double height;
  const DropdownMenu({
    super.key,
    required this.content,
    required this.height,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height, // Set the height of the dropdown menu
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Your DropdownMenu widget content
          content,
        ],
      ),
    );
  }
}
