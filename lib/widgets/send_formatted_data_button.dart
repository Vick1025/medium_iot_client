import 'package:aws_iot_client/core/model/formatted_data_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../blocs/aws_iot_bloc.dart';

class SendFormattedDataButton extends StatelessWidget {
  const SendFormattedDataButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        final formattedData = FormattedDataModel(
          name: 'Test',
          data1: "100",
          data2: "200",
        );
        context
            .read<AwsIotBloc>()
            .add(AwsIotSendFormattedMessage(formattedData));
      },
      child: const Text('Send Formatted Data'),
    );
  }
}
