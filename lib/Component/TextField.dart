import 'package:flutter/material.dart';

import '../Constant/colors.dart';

class passwordbox extends StatefulWidget {
  final Function(String)? Onchanged;
  passwordbox({this.Onchanged, required this.Text, this.controller});
  TextEditingController? controller;
  final String Text;
  @override
  State<passwordbox> createState() => _passwordboxState();
}

class _passwordboxState extends State<passwordbox> {
  var _isObscure = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 20,
      ),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(30)),
          color: kTextFormBgColor,
          boxShadow: [
            BoxShadow(
              color: Colors.black54,
              offset: Offset(10.0, 5.0),
              blurRadius: 10.0,
              spreadRadius: 2.0,
            )
          ],
        ),
        height: 60, //60,
        width: MediaQuery.of(context).size.width,
        child: TextFormField(
          controller: widget.controller,
          onChanged: widget.Onchanged,
          style: TextStyle(
            color: Colors.black,
          ),
          textAlign: TextAlign.center,
          keyboardType: TextInputType.visiblePassword,
          obscureText: _isObscure,
          decoration: InputDecoration(
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
            label: Center(child: Text(widget.Text)),
            suffixIcon: IconButton(
              icon: Icon(
                _isObscure ? Icons.visibility : Icons.visibility_off,
              ),
              onPressed: () {
                setState(() {
                  _isObscure = !_isObscure;
                });
              },
            ),
            labelStyle: TextStyle(color: Colors.black87),
          ),
        ),
      ),
    );
  }
}

class generalbox extends StatelessWidget {
  final Function(String)? Onchanged;

  final String label;
  TextInputType keyboardtype;
  TextEditingController? controller;
  generalbox(
      {required this.label,
      required this.keyboardtype,
      this.Onchanged,
      this.controller});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 20,
      ),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(30)),
          color: kTextFormBgColor,
          boxShadow: [
            BoxShadow(
              color: Colors.black54,
              offset: const Offset(10.0, 5.0),
              blurRadius: 10.0,
              spreadRadius: 2.0,
            )
          ],
        ),
        height: 60, //60,
        width: MediaQuery.of(context).size.width,
        child: TextFormField(
          controller: controller,
          onChanged: Onchanged,
          keyboardType: keyboardtype,
          style: TextStyle(
            color: Colors.black,
          ),
          textAlign: TextAlign.center,
          obscureText: false,
          decoration: InputDecoration(
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
            label: Center(child: Text(label)),
            labelStyle: TextStyle(
              color: Colors.black87,
            ),
          ),
        ),
      ),
    );
  }
}
