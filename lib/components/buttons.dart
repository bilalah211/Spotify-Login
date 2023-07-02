import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String title;
  final VoidCallback onTap;
  final color;
  final bool loading;

  const Button({super.key, required this.title, required this.onTap, this.loading = false, this.color});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: MediaQuery.of(context).size.height*0.05,
        width: double.infinity,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(31)
        ),
        child: Center(child: Text(title,style: const TextStyle(color: Colors.white, fontSize: 18),)),
      ),
    );
  }
}
