import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

import '../../../../../core/utils/constants.dart';

part 'study_plan_state.dart';

class StudyPlanCubit extends Cubit<StudyPlanState> {
  StudyPlanCubit() : super(StudyPlanInitial());
  static StudyPlanCubit get(context) => BlocProvider.of(context);
  void switchQuestionColor(bool val,int index) {

    AppConstants.selectedQuestionNow=index;
    AppConstants.selectedQuestionState=val;


    emit(SwitchQuestionColorState());
  }
}
