part of custom_button_package.dart;

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.buttonColor,
    required this.text,
    required this.textSize,
    required this.height,
    required this.width,
    required this.borderRadius,
    required this.borderColor,
    required this.fontweight,
    required this.onTap,
  });

  final double height;
  final double width;
  final Color buttonColor;
  final String text;
  final double textSize;
  final FontWeight fontweight;
  final VoidCallback onTap;
  final double borderRadius;
  final Color borderColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(borderRadius),
          color: buttonColor,
          border: Border.all(color: borderColor)),
      child: InkWell(
          onTap: onTap,
          child: Center(
            child: Text(
              text,
              style: TextStyle(
                fontSize: textSize,
                fontWeight: fontweight,
              ),
            ),
          )),
    );
  }
}
