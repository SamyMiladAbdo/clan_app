import 'package:clan_app/modules/choose_payment_screen/cubit/states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ChoosePaymentCubit extends Cubit<ChoosePaymentStates> {
  ChoosePaymentCubit() : super(ChoosePaymentInitialState());
  static ChoosePaymentCubit get(context) => BlocProvider.of(context);

  //TODO change options
  List<String> options = ["isAvila", "fsjghd","pay when recived"];
  String radioValue = "isAvila";
  void changeRadioValue(value) {
    radioValue = value;
    emit(ChangeRadioValueState());
  }
}
