import 'package:clan_app/core/network/end_points.dart';
import 'package:clan_app/core/network/local/cache_helper.dart';
import 'package:clan_app/core/network/remote/dio_helper.dart';
import 'package:clan_app/modules/cart_screen/widgets/cubit/states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CartWidgetCubit extends Cubit<CartWidgetStates> {
  CartWidgetCubit() : super(CartWidgetInitialState());
  static CartWidgetCubit get(context) => BlocProvider.of(context);

  late int quantity;

  void initQuantity(cartQuantity) {
    quantity = cartQuantity;
    emit(InitQuantityState());
  }

  void increaseQuantity() {
    quantity++;
    emit(IncreaseQuantityState());
  }

  void decreaseQuantity(productId) {
    if (quantity != 1) {
      quantity--;
      emit(DecreaseQuantityState());
    } else {
      deleteFromCartProducts(productId);
    }
  }

  Future deleteFromCartProducts(int productId) async {
    emit(DeleteItemFromCartLoadingState());
    DioHelper.deleteData(
      url: "carts/215/items/$productId/",
      anyHeaderKey: "Browsing-Key",
      anyHeaderValue: CacheHelper.getData(key: "browsingKey"),
      token: CacheHelper.getData(key: "token"),
    ).then((value) {
      print("Cart $value");

      emit(DeleteItemFromCartSuccessState());
    }).catchError((error) {
      print("Products Error : ${error}");

      emit(DeleteItemFromCartErrorState());
    });
  }
}
