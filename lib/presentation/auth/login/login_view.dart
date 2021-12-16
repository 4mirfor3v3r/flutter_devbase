import 'package:devbase/presentation/auth/login/login_view_empty.dart';
import 'package:devbase/utils/constant.dart';
import 'package:devbase/utils/widget/multi_state_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'login_viewmodel.dart';

class LoginScreen extends StatefulWidget {
  @override
  LoginScreenView createState() => LoginScreenView();
}

class LoginScreenView extends LoginScreenViewModel {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    // Replace this with your build function
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Container(
        padding: EdgeInsets.all(30),
        child: formLogin(height, width, context),
      ),
    );
  }

  Form formLogin(double height, double width, BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
              width: width / 3,
              height: width / 3,
              child: Center(child: Image.asset(logoApplication))),
          TextFormField(
              decoration: InputDecoration.collapsed(hintText: "Username")),
          TextFormField(),
          MultiStateWidget(
            key: layoutKey,
            child: Container(
              child: Text("Default"),
            ),
            emptyLayout: LoginEmpty(),
          ),
          ElevatedButton(
              onPressed: () {
                getUser();
              },
              child: Text("Button"))
        ],
      ),
    );
  }
}
