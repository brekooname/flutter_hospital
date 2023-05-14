part of 'app_cubit.dart';

@immutable
abstract class AppState {}

class AppInitial extends AppState {}

class LoginLoadingState extends AppState {}

class LoginSuccessState extends AppState {}

class LoginFailureState extends AppState {}

class GetAppoitmentsLoadingState extends AppState {}

class GetAppoitmentsSuccessState extends AppState {}

class GetAppoitmentsFailureState extends AppState {}

class GetSurgeryLoadingState extends AppState {}

class GetSurgerySuccessState extends AppState {}

class GetSurgeryFailureState extends AppState {}

class GetDiaougnsesLoadingState extends AppState {}

class GetDiaougnsesSuccessState extends AppState {}

class GetDiaougnsesFailureState extends AppState {}
