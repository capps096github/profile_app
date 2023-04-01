import 'package:flutter/material.dart';

class CallToAction extends StatelessWidget {
  const CallToAction({
    super.key,
    required this.action,
  });

  // action
  final String action;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Material(
        elevation: 2,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        clipBehavior: Clip.antiAlias,
        child: ListTile(
          tileColor: Colors.white,
          title: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(child: Text(action)),
          ),
        ),
      ),
    );
  }
}
