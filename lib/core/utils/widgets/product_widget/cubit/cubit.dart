import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:clan_app/core/network/end_points.dart';
import 'package:clan_app/core/network/local/cache_helper.dart';
import 'package:clan_app/core/network/remote/dio_helper.dart';
import 'package:clan_app/core/utils/custom_snack_bar.dart';
import 'package:clan_app/core/utils/widgets/product_widget/cubit/states.dart';
import 'package:clan_app/models/address_model.dart';
import 'package:clan_app/models/categories_model.dart';
import 'package:clan_app/models/create_new_cart_model.dart';
import 'package:clan_app/models/products_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProductWidgetCubit extends Cubit<ProductWidgetStates> {
  ProductWidgetCubit() : super(ProductWidgetInitialState());
  static ProductWidgetCubit get(context) => BlocProvider.of(context);

  CreateNewCartModel? createNewCartModel;
  Future createNewCart(price, productId, unit, context) async {
    emit(CreateNewCartLoadingState());
    print(CacheHelper.getData(key: "token"));
    print(CacheHelper.getData(key: "browsingKey"));
    DioHelper.postData(
      url: EndPoints.CREATE_NEW_CART,
      token: CacheHelper.getData(key: "token"),
      anyHeaderKey: "Browsing-Key",
      anyHeaderValue: CacheHelper.getData(key: "browsingKey"),
      data: {},
    ).then((value) {
      print(value);
      createNewCartModel = CreateNewCartModel.fromJson(value.data);
      addNewItemToCart(price, productId, unit, context);
      emit(CreateNewCartSuccessState());
    }).catchError((error) {
      print("Create New Cart Error : ${error.response}");
      emit(CreateNewCartErrorState());
    });
  }

  Future addNewItemToCart(price, productId, unit, context) async {
    // emit(AddNewItemToCartLoadingState());
    DioHelper.postData(
      url: EndPoints.GET_CART,
      token: CacheHelper.getData(key: "token"),
      anyHeaderKey: "Browsing-Key",
      anyHeaderValue: CacheHelper.getData(key: "browsingKey"),
      data: {
        "price": price,
        "product": productId,
        "unit": unit,
      },
    ).then((value) {
      print(value);
      createNewCartModel = CreateNewCartModel.fromJson(value.data);
      customSnackBar(
          context: context,
          contentType: ContentType.success,
          message: "Added To Cart");
      emit(AddNewItemToCartSuccessState());
    }).catchError((error) {
      print("Add New Item to Cart Error : ${error.response}");
      emit(AddNewItemToCartErrorState());
    });
  }
}
