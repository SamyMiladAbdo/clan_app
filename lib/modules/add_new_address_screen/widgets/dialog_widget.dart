import 'package:clan_app/core/constants/assets.dart';
import 'package:clan_app/core/constants/color.dart';
import 'package:clan_app/core/constants/constants.dart';
import 'package:clan_app/core/utils/widgets/custom_elevated_button.dart';
import 'package:clan_app/core/utils/widgets/spacre_widget.dart';
import 'package:clan_app/modules/add_new_address_screen/widgets/done_dialog_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DialogWidget extends StatelessWidget {
  const DialogWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(defaultRadius),
          color: Colors.white,
        ),
        padding: EdgeInsets.symmetric(
          vertical: 38.0,
          horizontal: defaultPadding,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const Text(
                  "اضافة صورة",
                  style: TextStyle(
                    fontFamily: "Almarai",
                    fontWeight: FontWeight.w400,
                    fontSize: 19.0,
                    color: AppColors.black2,
                  ),
                ),
                const Spacer(),
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  style: IconButton.styleFrom(
                    backgroundColor: AppColors.onSecondary,
                  ),
                  icon: const Icon(
                    Icons.close,
                    color: AppColors.black,
                  ),
                ),
              ],
            ),
            const VerticalSpace(28.0),
            const Text(
              "صورة لمكان تريد ان يتم التسليم",
              style: TextStyle(
                fontFamily: "Almarai",
                fontWeight: FontWeight.w400,
                fontSize: 15.0,
                color: AppColors.black2,
              ),
            ),
            const VerticalSpace(25.0),
            const Text(
              "إضافة مرفق",
              style: TextStyle(
                fontFamily: "Almarai",
                fontWeight: FontWeight.w400,
                fontSize: 14.0,
                color: AppColors.black2,
              ),
            ),
            const VerticalSpace(8.0),
            SizedBox(
              width: double.infinity,
              child: CustomElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        side: BorderSide(
                            color: AppColors.black.withOpacity(0.25)))),
                child: Row(
                  children: [
                    SvgPicture.asset(
                      AssetsData.attachment,
                    ),
                  ],
                ),
              ),
            ),
            const VerticalSpace(29.0),
            SizedBox(
              width: double.infinity,
              child: CustomElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  backgroundColor: AppColors.onSecondary,
                ),
                child: const Text(
                  "متابعة",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 18.0,
                    color: AppColors.black,
                  ),
                ),
                onPressed: () {
                  Navigator.pop(context);
                  showDialog(
                    context: context,
                    builder: (context) => const DownDialogWidget(),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
