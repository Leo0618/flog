import 'dart:io';

import 'package:flutter/services.dart';

class Flog {
  Flog._();

  static const MethodChannel _channel = const MethodChannel('flog');

  static bool enableLog = false;

  ///配置是否开启日志打印
  static void config(bool enable) {
    enableLog = enable;
  }

  ///类似于android的Log.i(),其他平台使用print
  static void i(String msg, {String tag = 'Flog'}) {
    if (!enableLog) return;
    if (Platform.isAndroid) {
      _channel.invokeMethod('logI', {'tag': tag, 'msg': msg});
    } else {
      print(msg);
    }
  }

  ///类似于android的Log.d(),其他平台使用print
  static void d(String msg, {String tag = 'Flog'}) {
    if (!enableLog) return;
    if (Platform.isAndroid) {
      _channel.invokeMethod('logD', {'tag': tag, 'msg': msg});
    } else {
      print(msg);
    }
  }

  ///类似于android的Log.v(),其他平台使用print
  static void v(String msg, {String tag = 'Flog'}) {
    if (!enableLog) return;
    if (Platform.isAndroid) {
      _channel.invokeMethod('logV', {'tag': tag, 'msg': msg});
    } else {
      print(msg);
    }
  }

  ///类似于android的Log.w(),其他平台使用print
  static void w(String msg, {String tag = 'Flog'}) {
    if (!enableLog) return;
    if (Platform.isAndroid) {
      _channel.invokeMethod('logW', {'tag': tag, 'msg': msg});
    } else {
      print(msg);
    }
  }

  ///类似于android的Log.e(),其他平台使用print
  static void e(String msg, {String tag = 'Flog'}) {
    if (!enableLog) return;
    if (Platform.isAndroid) {
      _channel.invokeMethod('logE', {'tag': tag, 'msg': msg});
    } else {
      print(msg);
    }
  }

  ///print
  static void println(String msg) {
    if (enableLog) print(msg);
  }
}
