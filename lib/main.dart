import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:counter_app/counter_observer.dart';
import 'package:counter_app/app.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


void main() {
  Bloc.observer = const CounterObserver();
  runApp(const CounterApp());
}

