import 'package:flutter/material.dart';

import './widgets/login_body.dart';

class LogInView extends StatelessWidget {
  const LogInView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => const Scaffold(
        body: LogInBody(),
      );
}
