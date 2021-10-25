import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '/features/on_boarding/cubit/cubit.dart';
import 'widgets/on_boarding_body.dart';

class OnBoardingView extends StatelessWidget {
  const OnBoardingView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        body: BlocProvider(
          create: (context) => OnBoardingCubit(),
          child: const OnBoardingBody(),
        ),
      );
}
