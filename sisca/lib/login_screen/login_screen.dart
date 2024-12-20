import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../app_theme.dart';
import '../app_utils.dart';
import '../routes/app_routes.dart';
import '../widgets.dart';
import 'login_screen.dart';

/// This class defines the variables used in the [login_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class LoginModel extends Equatable {
  @override
  List<Object?> get props => [];
  
  LoginModel();
  
  LoginModel copyWith() {
    return LoginModel();
  }
}

/// A bloc that manages the state of a Login according to the event that is dispatched to it.
class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc(LoginState initialState) : super(initialState) {
    on<LoginInitialEvent>(_onInitialize);
  }

  _onInitialize(LoginInitialEvent event, Emitter<LoginState> emit) async {
    emit(LoginState());
  }
}

/// Represents the state of Login in the application.
// ignore_for_file: must_be_immutable
class LoginState extends Equatable {
  TextEditingController? iconopngoneController;
  TextEditingController? password2removeController;
  LoginModel? loginModelObj;

  LoginState({
    this.iconopngoneController,
    this.password2removeController,
    this.loginModelObj,
  });

  @override
  List<Object?> get props => [
    iconopngoneController, 
    password2removeController, 
    loginModelObj
  ];

  LoginState copyWith({
    TextEditingController? iconopngoneController,
    TextEditingController? password2removeController,
    LoginModel? loginModelObj,
  }) {
    return LoginState(
      iconopngoneController: iconopngoneController ?? this.iconopngoneController,
      password2removeController: password2removeController ?? this.password2removeController,
      loginModelObj: loginModelObj ?? this.loginModelObj,
    );
  }
}

/// Abstract class for all events that can be dispatched from the Login widget.
/// Events must be immutable and implement the [Equatable] interface.
class LoginEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the Login widget is first created.
class LoginInitialEvent extends LoginEvent {
  @override
  List<Object?> get props => [];
}
