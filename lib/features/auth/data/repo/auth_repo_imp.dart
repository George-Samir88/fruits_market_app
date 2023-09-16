import 'package:fruits_market/features/auth/domain/repo/auth_repo.dart';

class AuthRepoImp implements AuthRepo {
  @override
  Future completeInformation(
      {String? email, String? phoneNumber, String? address}) {
    throw UnimplementedError();
  }

  @override
  Future loginWithFacebook() {
    throw UnimplementedError();
  }

  @override
  Future loginWithGmail() {
    throw UnimplementedError();
  }
}
