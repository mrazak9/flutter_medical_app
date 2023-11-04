// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class SpecialistItem extends StatelessWidget {
  final String imagepath;
  final String imageName;

  const SpecialistItem({
    Key? key,
    required this.imagepath,
    required this.imageName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: const Color.fromARGB(95, 170, 173, 173),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        children: [
          Image.asset(
            imagepath,
            // height: 18,
          ),
          const SizedBox(width: 8),
          Text(
            imageName,
            style: const TextStyle(fontSize: 14),
          ),
        ],
      ),
    );
  }
}
