import 'package:flutter/material.dart';
import 'package:learn/core/constant/routs.dart';
import 'package:learn/auth/login.dart';

Map<String, Widget Function(BuildContext)> routes = {
  AppRoute.login: (context) => const Login()
};
