import 'package:doctor/controllers/auth_controller.dart';

import '../../consts/consts.dart';

class WaitingScreen extends StatefulWidget {
  const WaitingScreen({super.key});

  @override
  State<WaitingScreen> createState() => _WaitingScreenState();
}

class _WaitingScreenState extends State<WaitingScreen> {

  @override
  void initState() {
    AuthController().isUserAlreadyLoggedIn();
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator(),
    );
  }
}
