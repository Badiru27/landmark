import 'package:landmark_app/app/app.locator.dart';
import 'package:landmark_app/app/app.router.dart';
import 'package:landmark_app/services/auth_service.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class AuthViemodel extends BaseViewModel {
  final _authService = locator<AuthService>();
  final _navigatoreService = locator<NavigationService>();

  //Fingerprint Login function
  void fingerPrintAuth() async {
    final biometrics = await _authService.authenticate();
    if (biometrics) {
      _navigatoreService.navigateTo(Routes.homeView);
    }
  }

  void googleAuth() async {
    final result = _authService.signInWithGoogle();
    print(result);
  }
}
