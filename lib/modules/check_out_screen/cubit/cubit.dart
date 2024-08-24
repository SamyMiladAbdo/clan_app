import 'package:clan_app/modules/check_out_screen/cubit/states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CheckOutCubit extends Cubit<CheckOutStates> {
  CheckOutCubit() : super(CheckOutInitialState());
  static CheckOutCubit get(context) => BlocProvider.of(context);

  bool switchValue = false;

  void changeSwitchValue(bool? newValue) {
    switchValue = newValue!;
    emit(ChangeSwitchValueState());
  }

  List<String> options = ["isAvila", "fsjghd"];
  String radioValue = "isAvila";
  void changeRadioValue(value) {
    radioValue = value;
    emit(ChangeRadioValueState());
  }
}
