import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../app_theme.dart';
import '../app_utils.dart';
import '../routes/app_routes.dart';
import '../widgets.dart';
import 'acceso_huella_bottomsheet.dart';

/// This class defines the variables used in the [acceso_huella_bottomsheet],
/// and is typically used to hold data that is passed between different parts of the application.
class AccesoHuellaModel extends Equatable {
  AccesoHuellaModel();

  AccesoHuellaModel copyWith() {
    return AccesoHuellaModel();
  }

  @override
  List<Object?> get props => [];
}

/// A bloc that manages the state of a AccesoHuella according to the event that is dispatched to it.
class AccesoHuellaBloc extends Bloc<AccesoHuellaEvent, AccesoHuellaState> {
  AccesoHuellaBloc(AccesoHuellaState initialState) : super(initialState) {
    on<AccesoHuellaInitialEvent>(_onInitialize);
  }

  Future<void> _onInitialize(
    AccesoHuellaInitialEvent event,
    Emitter<AccesoHuellaState> emit,
  ) async {
    // Add initialization logic here
  }
}

/// Represents the state of AccesoHuella in the application.
class AccesoHuellaState extends Equatable {
  AccesoHuellaState({this.accesoHuellaModelObj});

  final AccesoHuellaModel? accesoHuellaModelObj;

  @override
  List<Object?> get props => [accesoHuellaModelObj];

  AccesoHuellaState copyWith({AccesoHuellaModel? accesoHuellaModelObj}) {
    return AccesoHuellaState(
      accesoHuellaModelObj: accesoHuellaModelObj ?? this.accesoHuellaModelObj,
    );
  }
}

/// Abstract class for all events that can be dispatched from the AccesoHuella widget.
///
/// Events must be immutable and implement the [Equatable] interface.
abstract class AccesoHuellaEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the AccesoHuella widget is first created.
class AccesoHuellaInitialEvent extends AccesoHuellaEvent {
  @override
  List<Object?> get props => [];
}
