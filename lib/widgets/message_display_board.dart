import 'package:flutter/material.dart';

class MessageDisplayBoard extends StatelessWidget {
  final List<String> messages;

  const MessageDisplayBoard({
    super.key,
    required this.messages,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 360,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Text(
            messages.join('\n'),
            style: const TextStyle(fontSize: 14, color: Colors.black),
          ),
        ),
      ),
    );
  }
}
