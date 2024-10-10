import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:clan_app/core/constants/assets.dart';
import 'package:clan_app/core/constants/color.dart';
import 'package:clan_app/core/constants/constants.dart';
import 'package:clan_app/core/utils/custom_snack_bar.dart';
import 'package:clan_app/core/utils/widgets/custom_elevated_button.dart';
import 'package:clan_app/core/utils/widgets/spacre_widget.dart';
import 'package:clan_app/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DownDialogWidget extends StatelessWidget {
  const DownDialogWidget({super.key});

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
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              children: [
                const Text(
                  "تم",
                  style: TextStyle(
                    fontFamily: "Almarai",
                    fontWeight: FontWeight.w400,
                    fontSize: 19.0,
                    color: AppColors.black2,
                  ),
                ),
                const SizedBox(
                  width: 8.0,
                ),
                SvgPicture.asset(
                  AssetsData.tickSquare,
                  color: AppColors.primary,
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
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            //TODO check this Vertical space correct or not
            const VerticalSpace(61.0),
            const Text(
              "تم التأكيد بنجاح",
              style: TextStyle(
                fontFamily: "Almarai",
                fontWeight: FontWeight.w400,
                fontSize: 17.0,
                color: AppColors.black2,
              ),
            ),
            const VerticalSpace(83.0),
            SizedBox(
              width: double.infinity,
              child: CustomElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  backgroundColor: AppColors.onSecondary,
                ),
                onPressed: () {
                  Navigator.pushNamed(context, AppRoutes.layoutScreen);
                },
                child: const Text(
                  "تم",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 18.0,
                    color: AppColors.black,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
