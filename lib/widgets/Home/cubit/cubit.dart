import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:medical_store/widgets/Home/cubit/state.dart';
import 'package:medical_store/widgets/screens/favorites.dart';
import 'package:medical_store/widgets/screens/sells.dart';
import 'package:medical_store/widgets/screens/settings.dart';

import 'package:provider/provider.dart';

class MedicalHomeCubit extends Cubit<MedicalHomeStates> {
  MedicalHomeCubit() : super(MedicalHomeInitialState());

  static MedicalHomeCubit get(context) => BlocProvider.of(context);

  int currentIndex = 0;
  List<Widget> bottomScreen = [
    const Favorites(),
    const Card(),
    const Sells(),
    const Settings(),
  ];

  void ChangeBottom(int Index) {
    currentIndex = Index;
    emit(MediclHomeChangeBottomNavBar());
  }
}
