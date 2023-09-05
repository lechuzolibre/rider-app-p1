import 'package:flutter/material.dart';

class LoginSuccessPage extends StatelessWidget {
  const LoginSuccessPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text("Congrats", style: Theme.of(context).textTheme.headlineLarge),
          const SizedBox(
            height: 4,
          ),
          Text(
            "Sign up completed!",
            style: Theme.of(context)
                .textTheme
                .headlineMedium
                ?.copyWith(color: const Color(0xff108910)),
          )
        ],
      ),
    );
  }
}
