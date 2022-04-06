
import 'package:landmark_app/services/auth_service.dart';
import 'package:landmark_app/view/auth/auth_view.dart';
import 'package:landmark_app/view/auth/auth_viewmodel.dart';
import 'package:landmark_app/view/confirmation/confirmation.dart';
import 'package:landmark_app/view/home/home_view.dart';
import 'package:landmark_app/view/home/home_viewmodel.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';

@StackedApp(
  routes: [
    MaterialRoute(page: AuthView),
    MaterialRoute(page: HomeView),
    MaterialRoute(page: ConfirmationPage, initial: true),
  ],
  dependencies: [
    LazySingleton(classType: AuthService),
    LazySingleton(classType: AuthViemodel),
    LazySingleton(classType: HomeViewModel),
    LazySingleton(classType: SnackbarService),
    LazySingleton(classType: NavigationService),
    LazySingleton(classType: DialogService),
  ]
)


class App{}