import 'package:flutter/material.dart';

import '../core/abstractions/failure.dart';

class ErrorView extends StatelessWidget {
  final Failure? failure;
  final VoidCallback onTryAgain;

  const ErrorView({Key? key, required this.onTryAgain, this.failure})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            failure != null ? failure!.message : 'Unexpected error happen',
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 16),
          FilledButton(
            onPressed: onTryAgain,
            child: const Text('Try again'),
          ),
        ],
      ),
    );
  }
}
