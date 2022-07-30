import 'dart:async';
import 'package:blood_line/data/models/RegistrationModel.dart';
import 'package:blood_line/data/repository.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RegBloc extends Bloc<RegEvent, RegState> {
  RegBloc() : super(RegState()) {

    on<CheckREG>(_checkReg);
  }

  Future<FutureOr<void>> _checkReg(
      CheckREG event, Emitter<RegState> emit) async {
    emit(CheckingReg());
    RegistrationModel registrationModel;
    Map data = {
      "phonenumber": event.phonenumber,
      "password": event.password,
      "city":event.city,
      "gender":event.gender,
      "name":event.name,
    };


    registrationModel =
    await Repository().register(url: '/user/registration', data: data);
    if (registrationModel.status == true) {
      //await TempStorage.addToken(registrationModel.user!.name.toString());
      //await TempStorage.addRole(registrationModel.user!.role.toString());
      emit(RegChecked());
    } else {
      emit(RegError(error: registrationModel.msg.toString()));
    }
  }
}
//events
class RegEvent extends Equatable {
  @override
  List<Object?> get props => [];
}



class CheckREG extends RegEvent {
  final String  phonenumber,password,city,gender,name;
  CheckREG({ required this.phonenumber,required this.password,required this.name,required this.city,required this.gender});
}


//states

class RegState extends Equatable {
  @override
  List<Object?> get props => [];
}

class CheckingReg extends RegState {}
class RegChecked extends RegState {
}

class RegError extends RegState {
  final String error;
  RegError({required this.error});
}