
abstract class AuthStates {}


class AuthInitialState extends AuthStates {}



class AuthLoginLoadingState extends AuthStates {}
class AuthLoginSuccessState extends AuthStates {}
class AuthLoginErrorState extends AuthStates {

  final String error;
  AuthLoginErrorState({required this.error});
}



class AuthSignUpLoadingState extends AuthStates {}
class AuthSignUpSuccessState extends AuthStates {
  final String message;
  AuthSignUpSuccessState({required this.message});
}
class AuthSignUpErrorState extends AuthStates {

  final String error;
  AuthSignUpErrorState({required this.error});
}



class ChangeGenderState extends AuthStates {}
class LoadingGenderState extends AuthStates {}



class AuthCheckEmailLoadingState extends AuthStates {}
class AuthCheckEmailSuccessState extends AuthStates {
  final String message;
  AuthCheckEmailSuccessState({required this.message});
}
class AuthCheckEmailErrorState extends AuthStates {
  final String error;
  AuthCheckEmailErrorState({required this.error});
}


// class GetUserSuccessState extends AuthStates {
//   final UserModel userModel;
//   GetUserSuccessState({required this.userModel});
// }
// class GetUserErrorState extends AuthStates {
//   final String error;
//   GetUserErrorState({required this.error});
// }
// class GetUserLoadingState extends AuthStates {}