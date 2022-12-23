import '../Routes/routes.dart';

class CustomTextField extends StatelessWidget {
  final String text;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final Widget? suffix;
  final Widget? prefix;
  final Color? borderColor;
  final double contentTopPadding;
  final double contentBottomPadding;
  final double contentRightPadding;
  final double contentLeftPadding;
  final bool enabled;
  const CustomTextField(
      {Key? key,
      required this.text,
      this.prefixIcon,
      this.suffix,
      this.prefix,
      this.suffixIcon,
      this.borderColor,
      this.contentTopPadding = 10,
      this.contentBottomPadding = 10,
      this.contentLeftPadding = 10,
      this.contentRightPadding = 10,
      this.enabled = true})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController nameController = TextEditingController();
    return Container(
      height: 48,
      width: double.infinity,
      decoration: BoxDecoration(
        border: Border.all(color: borderColor ?? grey, width: 1),
        borderRadius: BorderRadius.circular(100),
      ),
      child: TextFormField(
        controller: nameController,
        enabled: enabled,
        decoration: InputDecoration(
          prefixIcon: prefixIcon,
          suffixIcon: suffixIcon,
          suffix: suffix,
          prefix: prefix,
          border: InputBorder.none,
          hintText: text,
          hintStyle:
              TextStyle(color: grey, fontSize: 16, fontWeight: FontWeight.bold),
          contentPadding: EdgeInsets.only(
              left: contentLeftPadding,
              right: contentRightPadding,
              top: contentTopPadding,
              bottom: contentBottomPadding),
        ),
      ),
    );
  }
}
