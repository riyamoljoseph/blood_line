import 'dart:async';
import 'package:blood_line/data/models/LoginModel.dart';
import 'package:blood_line/data/repository.dart';
import 'package:blood_line/helper/sharedpreferences.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(AuthState()) {

    on<CheckOTP>(_checkOtp);
  }

  Future<FutureOr<void>> _checkOtp(
      CheckOTP event, Emitter<AuthState> emit) async {
    emit(CheckingOtp());
    LoginModel loginModel;
    Map data = {
      "phonenumber": event.phonenumber,
      "password": event.password,
    };


    loginModel =
    await Repository().login(url: '/user/login', data: data);
    if (loginModel.status == true) {
      await TempStorage.addToken(loginModel.token.toString());
      await TempStorage.addRole(loginModel.data!.role.toString());
      emit(OtpChecked());
    } else {
      emit(OtpError(error: loginModel.msg.toString()));
    }
  }
}
//events
class AuthEvent extends Equatable {
  @override
  List<Object?> get props => [];
}



class CheckOTP extends AuthEvent {
  final String  phonenumber,password;
  CheckOTP({ required this.phonenumber,required this.password});
}


//states

class AuthState extends Equatable {
  @override
  List<Object?> get props => [];
}

class CheckingOtp extends AuthState {}
class OtpChecked extends AuthState {
}

class OtpError extends AuthState {
  final String error;
  OtpError({required this.error});
}