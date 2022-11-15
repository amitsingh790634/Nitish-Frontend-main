
import 'package:astro_app/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart'; 

class OtpInput extends StatelessWidget {
  const OtpInput(
      {Key? key,
      required this.controller,
      required this.autoFocus,
      required this.validator})
      : super(key: key);
  final bool autoFocus;
  final TextEditingController controller;
  final String? Function(String?) validator;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        height: 40,
        width: 10.w,
        child: Container(
          width: 12.w, 
          height: 9.h, 
          decoration: BoxDecoration(
              border: Border.all(color: lightgrey, width: 1),
              borderRadius: BorderRadius.circular(6)),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              decoration: const InputDecoration(
                contentPadding: EdgeInsets.symmetric(vertical: 8),
                border: InputBorder.none,
                focusedBorder: InputBorder.none,
                enabledBorder: InputBorder.none,
                errorBorder: InputBorder.none,
                hintText: '0',
                hintStyle: TextStyle(fontSize: 15.0, color: Colors.grey,fontWeight: FontWeight.w300),
                counterText: '',
                focusColor: Colors.blue,
              ),
              autofocus: autoFocus,
              textAlign: TextAlign.center,
              keyboardType: TextInputType.number,
              controller: controller,
              validator: validator,
              maxLength: 1,
              onChanged: (value) {
                if (value.length == 1) {
                  FocusScope.of(context).nextFocus();
                }
              },
            ),
          ),
        ),
      ),
    );
  }
}