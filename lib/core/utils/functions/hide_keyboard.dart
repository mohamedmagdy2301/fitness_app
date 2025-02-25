// hide keyboard

import 'package:flutter/material.dart';

hideKeyBoard() {
  return FocusManager.instance.primaryFocus?.unfocus();
}
