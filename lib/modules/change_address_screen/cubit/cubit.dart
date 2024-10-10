import 'package:clan_app/core/network/end_points.dart';
import 'package:clan_app/core/network/local/cache_helper.dart';
import 'package:clan_app/core/network/remote/dio_helper.dart';
import 'package:clan_app/models/address_model.dart';
import 'package:clan_app/modules/change_address_screen/cubit/states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ChangeAddressCubit extends Cubit<ChangeAddressStates> {
  ChangeAddressCubit() : super(ChangeAddressInitialState());
  static ChangeAddressCubit get(context) => BlocProvider.of(context);

  int? value;
  List<int> items = [];

  void changeRadioValue(int newValue, AddressModel addressModel) {
    value = newValue;
    getBrowsingKey(addressModel.results!
        .firstWhere((element) => element!.id == newValue)!);
    emit(ChangeRadioValueState());
  }

  void initValue(AddressModel addressModel) {
    for (int i = 0; i < addressModel.results!.length; i++) {
      items.add(addressModel.results![i]!.id!);
    }
    value = addressModel.results![0]!.id!;
    emit(ChangeRadioValueState());
  }

  Future getBrowsingKey(Results addressModel) async {
    emit(GetBrowsingKeyLoadingState());
    DioHelper.postData(
      url: EndPoints.BROWSING_KEY,
      data: {
        {"address": addressModel.id, "delivery_type": "FAST"}
      },
    ).then((value) {
      CacheHelper.putString(key: "browsingKey", value: value.data["key"]);
      emit(GetBrowsingKeySuccessState());
    }).catchError((error) {
      print("Browsing Key Error : ${error}");

      emit(GetBrowsingKeyErrorState());
    });
  }
}
