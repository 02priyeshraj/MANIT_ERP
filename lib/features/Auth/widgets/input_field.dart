import 'package:flutter/material.dart';

class InputData extends StatefulWidget {
  final TextEditingController? controller;
  final String hintText;
  final String? lable;
  final Key? fieldKey;
  final bool? isPasswordField;
  const InputData(
      {super.key,
      this.controller,
      this.lable,
      required this.hintText,
      this.fieldKey,
      this.isPasswordField});

  @override
  State<InputData> createState() => _InputDataState();
}

class _InputDataState extends State<InputData> {
  late bool _obscureText = false;
  @override
  void initState() {
    super.initState();
    _obscureText = widget.isPasswordField == true;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text(widget.lable ?? "",
                style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: Colors.grey)),
          ],
        ),
        TextFormField(
          textAlignVertical: TextAlignVertical.center,
          cursorColor: Colors.black,
          obscureText: _obscureText,
          controller: widget.controller,
          autofocus: false,
          style: TextStyle(
              fontSize: 18.0,
              color: Color.fromARGB(150, 0, 0, 0),
              fontWeight: FontWeight.w600),
          decoration: InputDecoration(
            filled: true,
            fillColor: Colors.white,
            hintText: widget.hintText,
            hintStyle: TextStyle(color: Colors.grey, fontSize: 15),
            // focusedBorder: OutlineInputBorder(
            //   // borderSide: BorderSide(color: Colors.white),
            //   borderRadius: BorderRadius.circular(5),
            // ),
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.grey),
              borderRadius: BorderRadius.circular(5),
            ),
            suffixIcon: GestureDetector(
                onTap: () {
                  setState(() {
                    _obscureText = !_obscureText;
                  });
                },
                child: AbsorbPointer(
                  // absorbing: widget.isPasswordField??false,
                  child: (widget.isPasswordField == true)
                      ? Icon(
                          _obscureText
                              ? Icons.visibility_off
                              : Icons.visibility,
                          color:
                              _obscureText == false ? Colors.blue : Colors.grey,
                        )
                      : Text(""),
                )),
          ),
        ),
      ],
    );
  }
}
