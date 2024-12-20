import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../app_theme.dart';
import '../app_utils.dart';
import '../routes/app_routes.dart';
import '../widgets.dart';
import 'reconocimiento_facial_exitoso_screen.dart';

/// Este modelo define las variables usadas en [ReconocimientoFacialExitosoScreen].
/// Usualmente se utiliza para almacenar datos que se comparten entre diferentes partes de la aplicación.
class ReconocimientoFacialExitosoModel extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Clase Bloc que gestiona el estado de ReconocimientoFacialExitoso según los eventos.
class ReconocimientoFacialExitosoBloc
    extends Bloc<ReconocimientoFacialExitosoEvent, ReconocimientoFacialExitosoState> {
  ReconocimientoFacialExitosoBloc(ReconocimientoFacialExitosoState initialState)
      : super(initialState) {
    on<ReconocimientoFacialExitosoInitialEvent>(_onInitialize);
  }

  Future<void> _onInitialize(
    ReconocimientoFacialExitosoInitialEvent event,
    Emitter<ReconocimientoFacialExitosoState> emit,
  ) async {
    // Aquí puedes agregar lógica para inicializar el estado.
  }
}

/// Representa el estado de ReconocimientoFacialExitoso en la aplicación.
class ReconocimientoFacialExitosoState extends Equatable {
  final ReconocimientoFacialExitosoModel? reconocimientoFacialExitosoModelObj;

  ReconocimientoFacialExitosoState({this.reconocimientoFacialExitosoModelObj});

  @override
  List<Object?> get props => [reconocimientoFacialExitosoModelObj];

  ReconocimientoFacialExitosoState copyWith({
    ReconocimientoFacialExitosoModel? reconocimientoFacialExitosoModelObj,
  }) {
    return ReconocimientoFacialExitosoState(
      reconocimientoFacialExitosoModelObj:
          reconocimientoFacialExitosoModelObj ?? this.reconocimientoFacialExitosoModelObj,
    );
  }
}

/// Clase abstracta para todos los eventos que pueden ser despachados desde el widget ReconocimientoFacialExitoso.
/// Los eventos deben ser inmutables e implementar la interfaz [Equatable].
abstract class ReconocimientoFacialExitosoEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Evento que se despacha cuando se crea por primera vez el widget ReconocimientoFacialExitoso.
class ReconocimientoFacialExitosoInitialEvent extends ReconocimientoFacialExitosoEvent {}
