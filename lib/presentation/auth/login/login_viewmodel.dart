import 'package:devbase/utils/widget/multi_state_widget.dart';

import 'login_view.dart';
import 'package:flutter/material.dart';

abstract class LoginScreenViewModel extends State<LoginScreen> {
  final formKey = GlobalKey<FormState>();

  final layoutKey = GlobalKey<MultiStateWidgetState>();

  void getUser() {
    layoutKey.currentState!.setLoading();
  }
}
