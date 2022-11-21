import '../../Routes/routes.dart';

class MyTextField extends StatelessWidget {
  final String text;
  const MyTextField({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController nameController = TextEditingController();
    return Container(
      height: 48,
      width: double.infinity,
      decoration: BoxDecoration(
        border: Border.all(color: grey, width: 1),
        borderRadius: BorderRadius.circular(100),
      ),
      child: TextFormField(
        controller: nameController,
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: text,
          hintStyle: GoogleFonts.archivo(
              color: grey, fontSize: 16, fontWeight: FontWeight.bold),
          contentPadding: EdgeInsets.all(10),
        ),
      ),
    );
  }
}
