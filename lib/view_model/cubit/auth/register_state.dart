part of 'register_cubit.dart';

@immutable
abstract class RegisterState {}

class RegisterInitial extends RegisterState {}

class SubmitUsersState extends RegisterState {}

class RegisterLoadingState extends RegisterState {}

class ChatRegisterSuccessState extends RegisterState {}

class ChatRegisterErrorState extends RegisterState {}

class ChatSuccessSaveToFireStoreState extends RegisterState {}

class ChatFiledSaveToFireStoreState extends RegisterState {}

