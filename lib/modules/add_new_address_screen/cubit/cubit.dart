import 'dart:io';

import 'package:clan_app/modules/add_new_address_screen/cubit/states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
}
