class AwsIotCoreConfig {
  // Change to your own endpoint
  static const String endpoint =
      '<your-endpoint>-ats.iot.ap-southeast-2.amazonaws.com';
  // Change to your own clientId(Set a unique string for each device)
  static const String clientId = 'test12345678';
  static const String pubTopic = 'Medium/Test/Pub';
  static const String subTopic = 'Medium/Test/Sub';
  static const int port = 8883;
  static const int keepAlivePeriod = 180;
  static const String caPath = 'assets/certs/AmazonRootCA1.pem';
  static const String certPath = 'assets/certs/theCrtFile.pem.crt';
  static const String keyPath = 'assets/certs/privateKey.pem.key';
}
