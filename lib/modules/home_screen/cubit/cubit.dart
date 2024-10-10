import 'package:clan_app/core/constants/constants.dart';
import 'package:clan_app/core/network/end_points.dart';
import 'package:clan_app/core/network/local/cache_helper.dart';
import 'package:clan_app/core/network/remote/dio_helper.dart';
import 'package:clan_app/models/address_model.dart';
import 'package:clan_app/models/categories_model.dart';
import 'package:clan_app/models/products_model.dart';
import 'package:clan_app/modules/home_screen/cubit/states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeCubit extends Cubit<HomeStates> {
  HomeCubit() : super(HomeInitialState());
  static HomeCubit get(context) => BlocProvider.of(context);

  AddressModel? addressModel;

  Future getAddresses() async {
    emit(GetAddressesLoadingState());
    print("token value ${CacheHelper.getData(key: "token")}");
    DioHelper.getData(
            url: EndPoints.ADDRESSES, token: CacheHelper.getData(key: "token"))
        .then((value) {
      print(value);
      addressModel = AddressModel.fromJson(value.data);
      getBrowsingKey();
      emit(GetAddressesSuccessState());
    }).catchError((error) {
      print(error);

      emit(GetAddressesErrorState());
    });
  }

  Future getBrowsingKey() async {
    emit(GetBrowsingKeyLoadingState());
    var addressId = addressModel!.results!
        .firstWhere((element) => element!.isDefault! == true)!
        .id!;
    print(addressId);
    await DioHelper.postData(url: EndPoints.BROWSING_KEY, data: {
      "address": addressId,
      "delivery_type": "FAST",
    }).then((value) async {
      print("Browsing Key $value");
      await CacheHelper.putString(key: "browsingKey", value: value.data["key"]);
      getProducts();
      getCategories();
      emit(GetBrowsingKeySuccessState());
    }).catchError((error) {
      print("Browsing Key Error : ${error}");

      emit(GetBrowsingKeyErrorState());
    });
  }

  ProductsModel? productsModel;

  Future getProducts() async {
    emit(GetAllProductsLoadingState());
    print("Cache Key ${CacheHelper.getData(key: "browsingKey")}");
    DioHelper.getData(
      url: EndPoints.ALL_PRODUCTS,
      anyHeaderKey: "Browsing-Key",
      anyHeaderValue: CacheHelper.getData(key: "browsingKey"),
    ).then((value) {
      print("Products Value $value");
      productsModel = ProductsModel.fromJson(value.data);
      emit(GetAllProductsSuccessState());
    }).catchError((error) {
      print("Products Error : ${error}");

      emit(GetAllProductsErrorState());
    });
  }

  CategoriesModel? categoriesModel;

  Future getCategories() async {
    emit(GetAllCategoriesLoadingState());
    DioHelper.getData(
      url: EndPoints.ALL_CATEGORIES,
      anyHeaderKey: "Browsing-Key",
      anyHeaderValue: CacheHelper.getData(key: "browsingKey"),
    ).then((value) {
      print("Categories Value $value");
      categoriesModel = CategoriesModel.fromJson(value.data);
      emit(GetAllCategoriesSuccessState());
    }).catchError((error) {
      print("Categories Error : ${error}");

      emit(GetAllCategoriesErrorState());
    });
  }
}
