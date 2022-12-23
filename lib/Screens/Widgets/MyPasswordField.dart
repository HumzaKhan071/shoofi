import '../../Routes/routes.dart';

class MyPasswordField extends StatefulWidget {
  final String text;
  final double containerwidth;
  const MyPasswordField(
      {super.key, required this.text, this.containerwidth = double.infinity});

  @override
  State<MyPasswordField> createState() => _MyPasswordFieldState();
}

class _MyPasswordFieldState extends State<MyPasswordField> {
  bool valueObsecure = true;
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48,
      width: widget.containerwidth,
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
