
import 'package:shoofi/Routes/routes.dart';

class AccountUpdateScreen extends StatelessWidget {
  const AccountUpdateScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(preferredSize: Size.fromHeight(50), child: CustomAppBar(title: "Account")),
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
