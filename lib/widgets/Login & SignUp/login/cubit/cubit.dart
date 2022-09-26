import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:medical_store/widgets/Login%20&%20SignUp/login/cubit/states.dart';

class MedicalLoginCubit extends Cubit<MedicalLoginState>{
  MedicalLoginCubit(): super(MedicalLoginInitialState());
  static MedicalLoginCubit get(context)=>BlocProvider.of(context);

  IconData suffix = Icons.remove_red_eye_rounded;
  bool isPasswordShow=true;

  void ChangePasswordVisibility(){
    isPasswordShow = !isPasswordShow;
    suffix = isPasswordShow ?Icons.remove_red_eye_rounded:Icons.visibility_off_rounded;
    emit(MedicalLoginChangeIcon());
  }

}