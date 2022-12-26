import '../routes/routes.dart';

class PasswordTextField extends StatefulWidget {
  final String text;
  final double containerWidth;
  const PasswordTextField({super.key, required this.text, this.containerWidth = double.infinity});

  @override
  State<PasswordTextField> createState() => _PasswordTextFieldState();
}

class _PasswordTextFieldState extends State<PasswordTextField> {
  bool valueObsecure = true;
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48,
      width: widget.containerWidth,
      decoration: BoxDecoration(
        border: Border.all(color: grey, width: 1),
        borderRadius: BorderRadius.circular(100),
      ),
      child: TextFormField(
        controller: _controller,
        obscureText: valueObsecure,
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: widget.text,
          suffixIcon: IconButton(
              onPressed: () {
                setState(() {
                  valueObsecure = !valueObsecure;
                });
              },
              icon: Icon(
                valueObsecure
                    ? Icons.visibility_off_outlined
                    : Icons.visibility_outlined,
                color: grey,
              )),
          hintStyle:
              TextStyle(color: grey, fontSize: 16, fontWeight: FontWeight.bold),
          contentPadding: EdgeInsets.all(10),
        ),
      ),
    );
  }
}
