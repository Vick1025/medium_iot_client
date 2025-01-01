part of 'aws_iot_bloc.dart';

@immutable
sealed class AwsIotState {}

final class AwsIotInitial extends AwsIotState {}

final class AwsIotConnecting extends AwsIotState {}

final class AwsIotConnected extends AwsIotState {}

final class AwsIotDisconnected extends AwsIotState {}

final class AwsIotDataReceived extends AwsIotState {
  final List<String> messages;

  AwsIotDataReceived(this.messages);
}

final class AwsIotError extends AwsIotState {
  final String message;

  AwsIotError(this.message);
}
