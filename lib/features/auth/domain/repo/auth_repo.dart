import 'package:flutter/material.dart';

abstract class AuthRepo {
  Future loginWithFacebook();

  Future loginWithGmail();

  Future completeInformation({
    @required String email,
    @required String phoneNumber,
    @required String address,
  });
}
