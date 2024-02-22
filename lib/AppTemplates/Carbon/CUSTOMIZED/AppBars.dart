import 'package:flutter/material.dart';

class CarbonAppBars extends StatelessWidget implements PreferredSizeWidget {
  // REASON FOR implements PreferredSizeWidget
  // However, keep in mind that if you later decide to use your custom app bar in a Scaffold, you might need to refactor it to implement PreferredSizeWidget at that time.

  //  If you're only using your custom app bar in specific contexts where the PreferredSizeWidget interface isn't required, such as within another custom widget or in a custom layout, then you can choose not to implement it.

  const CarbonAppBars({
    super.key,
    required this.title,
    this.centerTitle = true,
    this.leading,
    this.trailing,
  });

  final String title;
  final bool centerTitle;
  final Widget? leading;
  final Widget? trailing;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        title,
        style: const TextStyle(fontWeight: FontWeight.bold),
      ),
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(0),
        child: Container(
          decoration: const BoxDecoration(
            border: Border(
              bottom: BorderSide(
                width: 1,
                color: Color.fromARGB(146, 167, 167, 167),
              ),
            ),
          ),
        ),
      ),
      centerTitle: centerTitle,
      leading: TextButton(
        style: ButtonStyle(
            overlayColor: MaterialStateProperty.all(Colors.transparent)),
        onPressed: () {
          Navigator.pop(context);
        },
        child: const Icon(
          Icons.arrow_back_ios_new_rounded,
          size: 25,
        ),
      ),
      actions: trailing != null ? [trailing!] : null,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(40);
}
