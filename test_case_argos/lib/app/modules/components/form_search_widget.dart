import 'package:flutter/material.dart';

class FormSearchWidget extends StatelessWidget {
  late String hintText;
  Function(String data)? onChanged;

  FormSearchWidget({
    Key? key,
    required this.hintText,
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: TextFormField(
        decoration: InputDecoration(
            fillColor: Colors.grey.withOpacity(0.24),
            filled: true,
            prefixIcon: const Icon(
              Icons.search,
              color: Colors.black,
            ),
            suffixIcon: Icon(
              Icons.filter_list_sharp,
              color: Colors.black,
              size: 24.0,
            ),
            border: OutlineInputBorder(
              borderRadius: const BorderRadius.all(
                Radius.circular(20),
              ),
              borderSide: BorderSide(
                  color: Color(0xFFDBDDE5).withOpacity(0.24), width: 0),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: const BorderRadius.all(
                Radius.circular(20),
              ),
              borderSide: BorderSide(
                  color: Color(0xFFDBDDE5).withOpacity(0.24), width: 0),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: const BorderRadius.all(
                Radius.circular(20),
              ),
              borderSide:
                  BorderSide(color: Colors.grey.withOpacity(0.24), width: 0),
            ),
            hintText: hintText,
            hintStyle: TextStyle(color: Color(0xFFA2A7C3)),
            labelStyle: TextStyle(color: Color(0xFFA2A7C3)),
            focusColor: Colors.black),
        onChanged: (v) {
          onChanged!(v);
        },
      ),
    );
  }
}
