// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedRouterGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';

import '../view/auth/auth_view.dart';
import '../view/confirmation/booking_list.dart';
import '../view/confirmation/confirmation.dart';
import '../view/home/home_view.dart';

class Routes {
  static const String authView = '/auth-view';
  static const String homeView = '/home-view';
  static const String confirmationPage = '/confirmation-page';
  static const String bookingListView = '/';
  static const all = <String>{
    authView,
    homeView,
    confirmationPage,
    bookingListView,
  };
}

class StackedRouter extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.authView, page: AuthView),
    RouteDef(Routes.homeView, page: HomeView),
    RouteDef(Routes.confirmationPage, page: ConfirmationPage),
    RouteDef(Routes.bookingListView, page: BookingListView),
  ];
  @override
  Map<Type, StackedRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, StackedRouteFactory>{
    AuthView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const AuthView(),
        settings: data,
      );
    },
    HomeView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const HomeView(),
        settings: data,
      );
    },
    ConfirmationPage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const ConfirmationPage(),
        settings: data,
      );
    },
    BookingListView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const BookingListView(),
        settings: data,
      );
    },
  };
}
