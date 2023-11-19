import 'package:flutter/material.dart';

class WidgetButton extends StatelessWidget {
  final String? title;
  final IconData? icon;
  const WidgetButton({super.key, this.title, this.icon});

  @override
  Widget build(BuildContext context) {
    return Row(
                children: [
                  Container(
                    height: 35,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 51, 51, 51),
                      // color: Colors.black12,
                      borderRadius: BorderRadius.circular(15)
                    ),
                    child: TextButton(                    
                      onPressed: (){}, 
                      child: Text(title!, style: const TextStyle(color: Colors.white),)
                      ),
                  )
                ],
              );
  }
}