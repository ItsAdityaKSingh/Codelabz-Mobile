import 'package:codelabz/application/login/login_bloc.dart';
import 'package:codelabz/application/register/register_bloc.dart';
import 'package:codelabz/di/injection.dart';
import 'package:codelabz/presentation/home/home_screen.dart';
import 'package:codelabz/presentation/login/login_screen.dart';
import 'package:codelabz/presentation/register/register_screen.dart';
import 'package:codelabz/presentation/splash/splash_screen.dart';
import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// route => main[/]
Handler mainHandler = Handler(
    handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
  return SplashScreen();
});

// route => login[/login]
Handler loginHandler = Handler(
    handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
  return BlocProvider<LoginBloc>(
    create: (context) => getIt<LoginBloc>(),
    child: LoginScreen(),
  );
});

// route => register[/register]
Handler registerHandler = Handler(
    handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
  return BlocProvider<RegisterBloc>(
    create: (context) => getIt<RegisterBloc>(),
    child: RegisterScreen(),
  );
});

// route => home[/home]
Handler homeHandler = Handler(
    handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
  return HomeScreen();
});
