import 'package:clan_app/core/constants/constants.dart';
import 'package:clan_app/core/network/end_points.dart';
import 'package:clan_app/core/network/local/cache_helper.dart';
import 'package:clan_app/core/network/remote/dio_helper.dart';
import 'package:clan_app/models/address_model.dart';
import 'package:clan_app/models/categories_model.dart';
import 'package:clan_app/models/products_model.dart';
import 'package:clan_app/modules/wishlist_screen/cubit/states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class WishlistCubit extends Cubit<WishlistStates> {
  WishlistCubit() : super(WishlistInitialState());
  static WishlistCubit get(context) => BlocProvider.of(context);

  String? browsingKey;
  Future getBrowsingKey() async {
    emit(GetBrowsingKeyLoadingState());
    DioHelper.postData(
      url: EndPoints.BROWSING_KEY,
      data: {
        "address": 647,
        "delivery_type": "FAST",
      },
    ).then((value) {
      print(value);
      browsingKey = value.data["key"];
      getFavouriteProducts();
      emit(GetBrowsingKeySuccessState());
    }).catchError((error) {
      print("Browsing Key Error : ${error}");

      emit(GetBrowsingKeyErrorState());
    });
  }

  ProductsModel? productsModel;

  Future getFavouriteProducts() async {
    if (browsingKey != null) {
      emit(GetAllProductsLoadingState());
      DioHelper.getData(
        url: EndPoints.ALL_PRODUCTS,
        anyHeaderKey: "Browsing-Key",
        anyHeaderValue: browsingKey,
      ).then((value) {
        print(value);
        productsModel = ProductsModel.fromJson(value.data);
        emit(GetAllProductsSuccessState());
      }).catchError((error) {
        print("Products Error : ${error}");

        emit(GetAllProductsErrorState());
      });
    }
  }
}
