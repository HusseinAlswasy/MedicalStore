
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:medical_store/widgets/Home/cubit/cubit.dart';
import 'package:medical_store/widgets/Home/cubit/state.dart';

class MedicalHomeLayout extends StatelessWidget {
  const MedicalHomeLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<MedicalHomeCubit, MedicalHomeStates>(
      listener: (context, state) => {},
      builder: (context, state) {
        var cubit = MedicalHomeCubit.get(context);
        return Scaffold(
          body: cubit.bottomScreen[cubit.currentIndex],
          bottomNavigationBar: BottomNavigationBar(
            onTap: (Index) {
              cubit.ChangeBottom(Index);
            },
            currentIndex: cubit.currentIndex,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.card_travel_rounded,
                ),
                label: 'Card',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.favorite,
                ),
                label: 'Favorite',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.settings,
                ),
                label: 'Settings',
              ),
            ],
          ),
        );
      },
    );
  }
}
