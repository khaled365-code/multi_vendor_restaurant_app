import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'change_entry_point_body_state.dart';

class ChangeEntryPointBodyCubit extends Cubit<ChangeEntryPointBodyState> {
  ChangeEntryPointBodyCubit() : super(ChangeEntryPointBodyInitial());



  int currentIndex=0;


   changeScreen({index})
  {

    currentIndex=index;
    if(currentIndex==0)
      {
        emit(ChangeToHomeSelected());

      }
    if(currentIndex==1)
    {
      emit(ChangeToSearchSelected());

    }
    if(currentIndex==2)
    {
      emit(ChangeToshopSelected());

    }
    if(currentIndex==3)
    {
      emit(ChangeToProfileSelected());

    }


  }


}
