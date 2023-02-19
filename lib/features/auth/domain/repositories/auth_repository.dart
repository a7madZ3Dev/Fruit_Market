import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';

abstract class AuthRepository {
  Future<Either<Exception, UserCredential>> logInWithGoogle();
  Future<Either<Exception, UserCredential>> logInWithFaceBook();
  Future completeInformation({
    @required String name,
    @required String phoneNumber,
    @required String address,
  });
}
