import 'package:clan_app/modules/search_screen/cubit/states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchCubit extends Cubit<SearchStates> {
  SearchCubit() : super(SearchInitialState());
  static SearchCubit get(context) => BlocProvider.of(context);

  int selectedButton1 = 0;
  List<String> categpries1 = [
    "أجبان",
    "عصائر",
    "بقوليات",
    "تنظيف",
    "شوكولا",
  ];
  int selectedButton2 = 0;

  List<String> categpries2 = [
    "قشقوان",
    "مراعي",
    "اطلب مرة ثانية",
    "جبنة دهن",
    "قشقوان",
  ];

  void changeSelectedButton1(int index) {
    selectedButton1 = index;
    emit(ChangeSelectedButton1State());
  }
  void changeSelectedButton2(int index) {
    selectedButton2 = index;
    emit(ChangeSelectedButton2State());
  }
}
