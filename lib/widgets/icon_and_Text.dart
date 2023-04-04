import 'package:flutter/cupertino.dart';
import 'package:flutter_application_1/widgets/Small_text.dart';

class IconText extends StatelessWidget {
  final IconData icon;
  final String text;
  final Color iconcolor;
  const IconText({
    super.key,
    required this.icon,
    required this.text,
    required this.iconcolor,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon, color: iconcolor),
        SizedBox(
          width: 5,
        ),
        SmallText(
          text: text,
        ),
      ],
    );
  }
}
