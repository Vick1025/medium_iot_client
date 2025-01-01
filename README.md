# AWS IoT Core Flutter Demo

A Flutter application demonstrating real-time communication with AWS IoT Core, showcasing device connectivity and message exchange capabilities.

## Features

- 🔐 Secure connection to AWS IoT Core
- 📤 Publish messages to topics
- 📥 Subscribe and receive messages from topics 
- 📝 Support for formatted data sending
- 🎯 BLoC pattern for state management

## Getting Started

### Prerequisites

- Flutter SDK
- AWS IoT Core account
- AWS IoT Core device certificates

### Configuration

1. Update the following in `lib/aws_iot_core_config.dart`:
static const String endpoint = 'YOUR_AWS_IOT_ENDPOINT';
static const String clientId = 'YOUR_CLIENT_ID';

2. Place your device certificates in the `assets/certs/` directory:
- AmazonRootCA1.pem
- theCrtFile.pem.crt
- privateKey.pem.key

### Running the App
bash
flutter pub get
flutter run


## Project Structure
lib/
├── blocs/ # BLoC related files
├── core/ # Core entities and models
├── widgets/ # UI components
└── aws_iot_core_config.dart # AWS IoT Core configuration


## Key Components

- **ConnectButton**: Establishes connection with AWS IoT Core
- **MessageInputBar**: Input field for message sending
- **MessageDisplayBoard**: Displays received messages
- **SendFormattedDataButton**: Sends pre-formatted data

## State Management

The application uses BLoC pattern for state management with the following states:

- AwsIotInitial: Initial state
- AwsIotConnecting: Connection in progress
- AwsIotConnected: Successfully connected
- AwsIotDisconnected: Disconnected from service
- AwsIotDataReceived: Data received from topic
- AwsIotError: Error state

## MQTT Communication

The app demonstrates MQTT communication with AWS IoT Core through:
- Publishing messages to configured topics
- Subscribing to receive messages
- Handling connection states
- Managing secure communication using certificates

## Security Considerations

⚠️ This is a demonstration project. For production use:
- Never hardcode certificates and keys in the code
- Implement proper certificate rotation
- Follow AWS IoT Core security best practices
- Use secure storage for sensitive data

## Error Handling

The application includes comprehensive error handling for:
- Connection failures
- Message publishing errors
- Invalid data formats
- Certificate-related issues

## Contributing

Contributions are welcome! Please feel free to submit pull requests or create issues.

## License

MIT License

## Acknowledgments

- Built with [Flutter](https://flutter.dev)
- Uses [mqtt_client](https://pub.dev/packages/mqtt_client) package
- Implements [flutter_bloc](https://pub.dev/packages/flutter_bloc) for state management