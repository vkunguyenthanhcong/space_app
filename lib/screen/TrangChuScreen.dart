import 'dart:convert';
import 'package:flutter/material.dart';
class TrangChuScreen extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).requestFocus(new FocusNode());
      },
      child: Scaffold(
        
        backgroundColor: Color(0XFFF8EBD8),
        body: SafeArea(
          top: true,
          child: Text('a'),
        ),
      ),
    );
  }
}