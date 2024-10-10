import 'dart:io';

import 'package:clan_app/core/network/end_points.dart';
import 'package:clan_app/core/network/local/cache_helper.dart';
import 'package:clan_app/core/network/remote/dio_helper.dart';
import 'package:clan_app/modules/add_new_address_screen/cubit/states.dart';
import 'package:clan_app/modules/add_new_address_screen/widgets/dialog_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:geolocator/geolocator.dart';
import 'package:image_picker/image_picker.dart';

class AddNewAddressCubit extends Cubit<AddNewAddressStates> {
  AddNewAddressCubit() : super(AddNewAddressInitialState());
  static AddNewAddressCubit get(context) => BlocProvider.of(context);

  //to know which button is selected
  // 0 = home , 1 = work , 2 = other
  int selectedButton = 0;

  void changeSelectedButton(int index) {
    selectedButton = index;
    emit(ChangeSelectedButtonState());
  }

  File? image;
  final picker = ImagePicker();

  Future<void> getImage() async {
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      image = File(pickedFile.path);
      emit(ImagePeckedSuccessState());
    } else {
      emit(ImagePeckedErrorState());
    }
  }

  void removeImage() {
    image = null;
    emit(RemoveImageState());
  }

  // AddressModel? addressModel;
  late String lat;
  late String long;
  // Future<Position> getCurrentLocation() async {
  //   emit(GetCurrentLoadingState());
  //   bool serviceEnabled = await Geolocator.isLocationServiceEnabled();
  //   if (!serviceEnabled) {
  //     return Future.error("Location services are disabled");
  //   }
  //   LocationPermission permission = await Geolocator.checkPermission();

  //   if (permission == LocationPermission.denied) {
  //     permission = await Geolocator.requestPermission();
  //     if (permission == LocationPermission.denied) {
  //       emit(GetCurrentErrorState());

  //       return Future.error("Location services are disabled");
  //     }
  //   }

  //   if (permission == LocationPermission.deniedForever) {
  //     emit(GetCurrentErrorState());

  //     return Future.error(
  //         "Location permission are permanently denied, we cannot request permission");
  //   }
  //   return await Geolocator.getCurrentPosition();
  // }

  // Future getBrowsingKey() async {
  //   emit(GetBrowsingKeyLoadingState());
  //   DioHelper.postData(
  //     url: EndPoints.BROWSING_KEY,
  //     data: {
  //       {"address": 670, "delivery_type": "FAST"}
  //     },
  //   ).then((value) {
  //     CacheHelper.putString(key: "browsingKey", value: value.data["key"]);
  //     emit(GetBrowsingKeySuccessState());
  //   }).catchError((error) {
  //     print("Browsing Key Error : ${error}");

  //     emit(GetBrowsingKeyErrorState());
  //   });
  // }

  Future addNewAddress(context, descriptionController) async {
    emit(AddNewAddressLoadingState());
    // Position position = await getCurrentLocation();
    DioHelper.postData(
        url: EndPoints.ADDRESSES,
        token: CacheHelper.getData(key: "token"),
        data: {
          "name": selectedButton == 0
              ? "المنزل"
              : selectedButton == 1
                  ? "العمل"
                  : "أخرى",
          "location": "POINT(500 600)", // إحداثيات الموقع
          "is_default": true
        }).then((value) {
      print(value);
      // getBrowsingKey();
      showDialog(
        context: context,
        builder: (context) => const DialogWidget(),
      );
      emit(AddNewAddressSuccessState());
    }).catchError((error) {
      print(error);

      emit(AddNewAddressErrorState());
    });
  }
}
