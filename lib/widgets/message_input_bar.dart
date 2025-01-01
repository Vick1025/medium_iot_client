import 'package:flutter/material.dart';

class MessageInputBar extends StatefulWidget {
  final Function(String) onSend;

  const MessageInputBar({
    super.key,
    required this.onSend,
  });

  @override
  State<MessageInputBar> createState() => _MessageInputBarState();
}

class _MessageInputBarState extends State<MessageInputBar> {
  final TextEditingController _controller = TextEditingController();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: TextField(
            controller: _controller,
            decoration: const InputDecoration(
              hintText: 'Data to IoT Core',
              contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            ),
          ),
        ),
        ElevatedButton(
          onPressed: () {
            if (_controller.text.isNotEmpty) {
              widget.onSend(_controller.text);
              _controller.clear();
            }
          },
          child: const Text('Send'),
        ),
      ],
    );
  }
}
