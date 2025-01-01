part of 'aws_iot_bloc.dart';

@immutable
sealed class AwsIotEvent {}

final class AwsIotSendMessage extends AwsIotEvent {
  final String message;

  AwsIotSendMessage(this.message);
}

final class AwsIotConnect extends AwsIotEvent {}

final class AwsIotDataReceivedEvent extends AwsIotEvent {
  final String payload;

  AwsIotDataReceivedEvent(this.payload);
}

final class AwsIotSendFormattedMessage extends AwsIotEvent {
  final FormattedDataModel formattedData;

  AwsIotSendFormattedMessage(this.formattedData);
}
