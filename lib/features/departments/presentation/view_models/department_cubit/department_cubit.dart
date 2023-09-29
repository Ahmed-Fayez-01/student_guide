import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:student_guide/core/utils/constants.dart';

part 'department_state.dart';

class DepartmentCubit extends Cubit<DepartmentState> {
  DepartmentCubit() : super(DepartmentInitial());
  static DepartmentCubit get(context) => BlocProvider.of(context);
  void switchQuestionColor(bool val,int index) {

    AppConstants.selectedQuestionNow=index;
    AppConstants.selectedQuestionState=val;


    emit(SwitchQuestionColorState());
  }
}
