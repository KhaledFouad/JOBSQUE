import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:meta/meta.dart';
import '../../../model/UserModel.dart';

part 'register_state.dart';

class RegisterCubit extends Cubit<RegisterState> {
  RegisterCubit() : super(RegisterInitial());

  FirebaseAuth firebaseAuth = FirebaseAuth.instance;
  UserModel registerUser = UserModel();
  FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;

  registerbyEmailAndPassword(
      {required String name, email, password, jobs, locations}) async {
    UserCredential userCredential = await firebaseAuth
        .createUserWithEmailAndPassword(email: email, password: password);
    emit(ChatRegisterSuccessState());
    registerUser.name = name;
    registerUser.email = email;
    registerUser.password = password;
    registerUser.jobs = jobs;
    registerUser.locations = locations;
    registerUser.id = userCredential.user!.uid;
    emit(RegisterLoadingState());
    await firebaseFirestore
        .collection("Users")
        .doc(registerUser.id)
        .set(registerUser.toJson());
    emit(ChatSuccessSaveToFireStoreState());
  }
}
