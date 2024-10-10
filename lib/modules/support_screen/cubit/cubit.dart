import 'package:clan_app/modules/support_screen/cubit/states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SupportCubit extends Cubit<SupportStates> {
  SupportCubit() : super(SupportInitialState());
  static SupportCubit get(context) => BlocProvider.of(context);

  bool isExpanded1 = false;
  bool isExpanded2 = false;
  void changeExpandedValue(index, isExpanded) {
    index == 0 ? isExpanded1 = isExpanded : isExpanded2 = isExpanded;

    emit(ChangeExpandedValueState());
  }

  List list1 = [
    "نقص بالطلب",
    "منتج بحالة سيئة",
    "وصل صنف خطأ",
    "كل الطلب خطأ",
    "منتج غير متوفر",
  ];
  List list2 = [
    "طلب ملغي ومارجع المبلغ",
    "انسحب المبلغ مرتين",
    "وصل صنف خطأ",
  ];
}
