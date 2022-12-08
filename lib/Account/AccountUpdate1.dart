
import 'package:shoofi/Routes/routes.dart';

class AccountUpdateScreen extends StatelessWidget {
  const AccountUpdateScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(child: CustomAppBar(title: "Account"), preferredSize: Size.fromHeight(50)),
      body: Column(
        children: [
          LinearProgressIndicator(
            value: 0.0,
            backgroundColor: grey,
            valueColor: AlwaysStoppedAnimation<Color>(yellow),
          ),
        ],
      ),
    );
  }
}
