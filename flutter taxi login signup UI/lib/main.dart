import 'package:flutter/material.dart';
import 'package:attempet/Src/Login.dart';
import 'package:http/http.dart' as http;

import 'dart:convert';
void main() {
  runApp(
      new MaterialApp(
        title: 'myapp',
        home: LoginPage(),
      )
  );
}

