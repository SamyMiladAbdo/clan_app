import 'package:clan_app/modules/loading_request_screen/cubit/states.dart';
import 'package:clan_app/modules/loading_request_screen/widgets/bottom_sheet_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoadingRequestCubit extends Cubit<LoadingRequestStates> {
  LoadingRequestCubit() : super(LoadingRequestInitialState());
  static LoadingRequestCubit get(context) => BlocProvider.of(context);

  void showBottomSheett(context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true, // Allows for the bottom sheet to be full screen
      backgroundColor:
          Colors.transparent, // Make the background transparent if needed
      builder: (context) {
        return const BottomSheetWidget();
      },
    );
    emit(ShowBottomSheetState());
  }
}
