import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../blocs/aws_iot_bloc.dart';

class ConnectButton extends StatelessWidget {
  const ConnectButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        context.read<AwsIotBloc>().add(AwsIotConnect());
      },
      child: const Text('Connect to AWS IoT'),
    );
  }
}
