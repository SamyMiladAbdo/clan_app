import 'package:clan_app/modules/change_address_screen/cubit/states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ChangeAddressCubit extends Cubit<ChangeAddressStates> {
  ChangeAddressCubit() : super(ChangeAddressInitialState());
  static ChangeAddressCubit get(context) => BlocProvider.of(context);

  String value = "منزل 1";
  List items = ["منزل 1", "منزل 2", "منزل 3"];

  void changeRadioValue(String newValue) {
    value = newValue;
    emit(ChangeRadioValueState());
  }

}
