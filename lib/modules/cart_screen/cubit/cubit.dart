import 'package:clan_app/core/constants/constants.dart';
import 'package:clan_app/core/network/end_points.dart';
import 'package:clan_app/core/network/local/cache_helper.dart';
import 'package:clan_app/core/network/remote/dio_helper.dart';
import 'package:clan_app/models/cart_model.dart';
import 'package:clan_app/models/products_model.dart';
import 'package:clan_app/modules/cart_screen/cubit/states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CartCubit extends Cubit<CartStates> {
  CartCubit() : super(CartInitialState());
  static CartCubit get(context) => BlocProvider.of(context);

  int quantity = 0;
  double totalPrice = 0;

  void initQuantity(cartQuantity) {
    quantity = cartQuantity;
    emit(InitQuantityState());
  }

  void calculateTotalPrice() {
    for (int i = 0; i < cartProducts!.results!.length; i++) {
      totalPrice += double.parse(cartProducts!.results![i].price!) * quantity;
    }
    emit(CalculateTotalPriceState());
  }

  void increaseQuantity() {
    quantity++;
    emit(IncreaseQuantityState());
  }

  void decreaseQuantity() {
    quantity--;
    emit(DecreaseQuantityState());
  }

  CartModel? cartProducts;

  Future getCartProducts() async {
    emit(GetAllProductsLoadingState());
    DioHelper.getData(
      url: EndPoints.GET_CART,
      anyHeaderKey: "Browsing-Key",
      anyHeaderValue: CacheHelper.getData(key: "browsingKey"),
      token: CacheHelper.getData(key: "token"),
    ).then((value) {
      print("Cart $value");
      cartProducts = CartModel.fromJson(value.data);
      initQuantity(cartProducts!.results!.length);
      calculateTotalPrice();
      emit(GetAllProductsSuccessState());
    }).catchError((error) {
      print("Products Error : ${error}");

      emit(GetAllProductsErrorState());
    });
  }
}
