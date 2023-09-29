import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

import '../../../../../core/utils/constants.dart';

part 'academic_regulations_state.dart';

class AcademicRegulationsCubit extends Cubit<AcademicRegulationsState> {
  AcademicRegulationsCubit() : super(AcademicRegulationsInitial());
  static AcademicRegulationsCubit get(context) => BlocProvider.of(context);
  void switchQuestionColor(bool val,int index) {

    AppConstants.selectedQuestionNow=index;
    AppConstants.selectedQuestionState=val;


    emit(SwitchQuestionColorState());
  }
}
