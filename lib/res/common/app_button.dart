import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  final Color? color;
  final double? height;
  final String? title;
  final String? image;
  final TextStyle? style;

  final VoidCallback? onTap;
  const AppButton({Key? key, this.title, this.onTap, this.color, this.height, this.image, this.style}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56,
      width: 327,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(14),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          image == null ? const SizedBox() : Image.asset(image!, height: height ?? 24),
          InkWell(
            onTap: () {},
            child: Center(
              child: Text(
                title!,
                style: style!,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
