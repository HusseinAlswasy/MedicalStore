import 'package:flutter/material.dart';
import 'package:medical_store/widgets/cubit/states/states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MedicalCubit extends Cubit<MedicalState>{
  MedicalCubit() :super(MedicalInitialState());

 static MedicalCubit get(context)=> BlocProvider.of(context);


}