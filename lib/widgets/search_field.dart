import 'package:flutter/material.dart';

class SearchField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Material(
        elevation: 4,
        borderRadius: BorderRadius.circular(24),
        child: TextField(
          decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(horizontal: 32, vertical: 16),
            hintText: 'Search any food',
            suffixIcon: Icon(Icons.search),
            border: InputBorder.none
          ),
        ),
      ),
    );
  }
}
