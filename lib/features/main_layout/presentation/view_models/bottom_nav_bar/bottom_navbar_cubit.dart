import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'bottom_navbar_state.dart';

class BottomNavbarCubit extends Cubit<BottomNavbarState> {
  BottomNavbarCubit() : super(BottomNavbarInitial());
  static BottomNavbarCubit get(context) => BlocProvider.of(context);

  int currentIndex = 0;

  void changeBottomNavbar(int index) {
    currentIndex = index;
    emit(ChangeBottomNavbarState());
  }
}
