import 'package:flutter/material.dart';

Padding reusabletextfieldgenral(
    BuildContext context,
    IconData icn,
    bool icon_or_not,
    String text,
    TextEditingController controller,
    TextInputType texttype,
    bool color_or_not) {
  return Padding(
    padding: EdgeInsets.only(
      left: 18,
      right: 18,
      top: 10,
    ),
    child: SizedBox(
      height: MediaQuery.of(context).size.height * 0.065,
      child: TextFormField(
          validator: (value) {
            if (value!.length == 0) {
              return "Please Enter the $text";
            } else {
              return null;
            }
          },
          controller: controller,
          textInputAction: TextInputAction.next,
          
          cursorColor: Colors.black,
          style: TextStyle(
            color: Colors.black,
          ),
          keyboardType: texttype,
          decoration: InputDecoration(
              contentPadding: EdgeInsets.only(top: 10, left: 8, right: 8),
              prefixIcon: icon_or_not
                  ? Icon(
                      icn,
                      color: Colors.black,
                    )
                  : null,
              labelText: text,
              hintText: text,
             
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide(
                    width: 1,
                    // width: 0,
                    // style: BorderStyle.none
                  )))),
    ),
  );
}

Padding reusabletextfieldgenralwithoutvalidate(
    BuildContext context,
    IconData icn,
    bool icon_or_not,
    String text,
    TextEditingController controller,
    TextInputType texttype,
    bool color_or_not) {
  return Padding(
    padding: EdgeInsets.only(
      left: 18,
      right: 18,
      top: 10,
    ),
    child: SizedBox(
      height: MediaQuery.of(context).size.height * 0.065,
      child: TextFormField(
          controller: controller,
          textInputAction: TextInputAction.next,
          cursorColor: Colors.black,
          style: TextStyle(
            color: Colors.black,
          ),
          keyboardType: texttype,
          decoration: InputDecoration(
              contentPadding: EdgeInsets.only(top: 10, left: 8, right: 8),
              prefixIcon: icon_or_not
                  ? Icon(
                      icn,
                      color: Colors.black,
                    )
                  : null,
              labelText: text,
              hintText: text,
              
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide(
                    width: 1,
                    // width: 0,
                    // style: BorderStyle.none
                  )))),
    ),
  );
}


Padding reusabletextfieldpassword(
  TextEditingController controller,
  bool visiblepassword,
  Function ontap,
) {
  return Padding(
    padding: EdgeInsets.only(top: 10, left: 18, right: 18, bottom: 0),
    child: TextFormField(
      controller: controller,

      obscureText: visiblepassword,
      cursorColor: Colors.black,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.only(
            top: 10,
            left: 8,
            right: 8,
          ),
          prefixIcon: Icon(Icons.lock, color: Colors.black),
          suffixIcon: InkWell(
            onTap: () {
              ontap();
            },
            child: Icon(
              visiblepassword ? Icons.visibility : Icons.visibility_off,
              color: Colors.black,
            ),
          ),
          labelText: "Enter Password",
          labelStyle: TextStyle(color: Colors.black),
          hintText: "Password",
      
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: BorderSide(
                width: 1,
                // width: 0,
                // style: BorderStyle.none
              ))),
      validator: (value) {
        RegExp regex = new RegExp(r'^.{8,}$');
        if (value!.isEmpty) {
          return "Please Enter Password";
        }
        if (!regex.hasMatch(value)) {
          return ("Please enter valid password min 8 character");
        } else {
          return null;
        }
      },
     
      keyboardType: TextInputType.visiblePassword,
    ),
  );
}

SizedBox reusabletextfieldhome(
  BuildContext context,
  String text,
  TextEditingController controller,
  double width,
) {
  return SizedBox(
    width: MediaQuery.of(context).size.width * width,
    height: MediaQuery.of(context).size.height * 0.045,
    child: SizedBox(
      child: TextFormField(
          validator: (value) {
            if (value!.length == 0) {
              return "Please Enter the $text";
            } else {
              return null;
            }
          },
          controller: controller,
          textInputAction: TextInputAction.next,
          cursorColor: Colors.black,
          style: TextStyle(
            color: Colors.black,
          ),
          keyboardType: TextInputType.number,
         
          decoration: InputDecoration(
              contentPadding: EdgeInsets.only(top: 10, left: 8, right: 8),
              labelText: text,
              hintText: text,
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                  borderSide: BorderSide(
                    width: 1,
                    // width: 0,
                    // style: BorderStyle.none
                  )))),
    ),
  );
}

SizedBox reusabletextfieldhomewithlength(BuildContext context, String text,
    TextEditingController controller, double width, int length) {
  return SizedBox(
    width: MediaQuery.of(context).size.width * width,
    height: MediaQuery.of(context).size.height * 0.07,
    child: SizedBox(
      // height: MediaQuery.of(context).size.height * 0.05,
      child: TextFormField(
          validator: (value) {
            if (value!.length == 0) {
              return "Please Enter the $text";
            } else {
              return null;
            }
          },
          controller: controller,
          textInputAction: TextInputAction.next,
          cursorColor: Colors.black,
          style: TextStyle(
            color: Colors.black,
          ),
          keyboardType: TextInputType.number,
          maxLength: length,

          // maxLengthEnforcement: ,
          decoration: InputDecoration(
              contentPadding: EdgeInsets.only(top: 10, left: 8, right: 8),
              labelText: text,
              hintText: text,
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                  borderSide: BorderSide(
                    width: 1,
                    // width: 0,
                    // style: BorderStyle.none
                  )))),
    ),
  );
}
