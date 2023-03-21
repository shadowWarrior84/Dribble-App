

import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class EmoticonFace extends StatelessWidget {

  final String emoticonFace;

  const EmoticonFace({
    Key? key,
    required this.emoticonFace
  
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.blue.shade600,
        borderRadius: BorderRadius.circular(12)
      ),
      padding: const EdgeInsets.all(16),
      child: Text(emoticonFace, style: TextStyle(fontSize: 20),)
    );
  }
}