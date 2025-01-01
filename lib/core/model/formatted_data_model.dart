import 'package:aws_iot_client/core/entities/formatted_data_entity.dart';

class FormattedDataModel extends FormattedDataEntity {
  FormattedDataModel({
    required super.name,
    required super.data1,
    required super.data2,
  });

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'data1': data1,
      'data2': data2,
    };
  }

  factory FormattedDataModel.fromJson(Map<String, dynamic> json) {
    return FormattedDataModel(
      name: json['name'] as String,
      data1: json['data1'] as String,
      data2: json['data2'] as String,
    );
  }
}
