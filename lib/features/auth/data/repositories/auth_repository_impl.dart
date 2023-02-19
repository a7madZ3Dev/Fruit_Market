import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

import '/features/auth/domain/repositories/auth_repository.dart';

class AuthRepositoryImpl implements AuthRepository {

  @override
  Future completeInformation(
      {String? name, String? phoneNumber, String? address}) {
    // TODO: implement completeInformation
    throw UnimplementedError();
  }

  @override
  Future<Either<Exception, UserCredential>> logInWithFaceBook() async {
    try {
      /// Trigger the sign-in flow
      final loginResult = await FacebookAuth.instance.login();

      /// Create a credential from the access token
      final facebookAuthCredential =
          FacebookAuthProvider.credential(loginResult.accessToken!.token);

      /// Once signed in, return the UserCredential
      return Right(await FirebaseAuth.instance
          .signInWithCredential(facebookAuthCredential));
    } on FirebaseAuthException {
      return Left(Exception('Somthing went wrong'));
    } on SocketException {
      return Left(Exception('No Internet connection 😑'));
    }
  }

  @override
  Future<Either<Exception, UserCredential>> logInWithGoogle() async {
    try {
      /// Trigger the authentication flow
      final googleUser = await GoogleSignIn().signIn();

      /// Obtain the auth details from the request
      final googleAuth = await googleUser?.authentication;

      /// Create a new credential
      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth?.accessToken,
        idToken: googleAuth?.idToken,
      );

      /// Once signed in, return the UserCredential
      return Right(
          await FirebaseAuth.instance.signInWithCredential(credential));
    } on FirebaseAuthException {
      return Left(Exception('Somthing went wrong'));
    } on SocketException {
      return Left(Exception('No Internet connection 😑'));
    }
  }
}
