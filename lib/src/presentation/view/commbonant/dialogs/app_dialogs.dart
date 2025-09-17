import 'log_out_dialog.dart';
import 'package:flutter/material.dart';

import 'delete_dialog.dart';
import 'error_dialog.dart';
import 'success_dialog.dart';

class AppDialogs {
  static Widget logOut({required Function() action}) =>
      LogOutDialog(action: action);
  static Widget delete({required Function() action}) =>
      DeleteDialog(action: action);
  static Widget success({
    required Function() action,
    String? actionBtnWord,
    String? word,
    String? line,
  }) {
    return SuccessDialog(
      action: action,
      actionBtnWord: actionBtnWord,
      word: word,
      line: line,
    );
  }

  static Widget error({
    required Function() action,
    String? actionBtnWord,
    String? word,
    String? line,
  }) {
    return ErrorDialog(
      action: action,
      actionBtnWord: actionBtnWord,
      word: word,
      line: line,
    );
  }
}
