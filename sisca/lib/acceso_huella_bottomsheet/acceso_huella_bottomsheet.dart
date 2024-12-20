import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../app_theme.dart';
import '../app_utils.dart';
import '../routes/app_routes.dart';
import '../widgets.dart';
import 'acceso_huella_bloc.dart';

// ignore_for_file: must_be_immutable
class AccesoHuellaBottomsheet extends StatelessWidget {
  const AccesoHuellaBottomsheet({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<AccesoHuellaBloc>(
      create: (context) => AccesoHuellaBloc(
        AccesoHuellaState(
          accesoHuellaModelObj: AccesoHuellaModel(),
        ),
      )..add(AccesoHuellaInitialEvent()),
      child: const AccesoHuellaBottomsheet(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(vertical: 20.h),
      decoration: AppDecoration.fillWhiteA.copyWith(
        borderRadius: BorderRadiusStyle.customBorderTL34,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            height: 24.h,
            width: 198.h,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Text(
                  "msg_usa_tu_huella_digital".tr,
                  style: Theme.of(context).textTheme.titleLarge,
                ),
              ],
            ),
          ),
          SizedBox(height: 8.h),
          SizedBox(
            height: 16.h,
            width: 98.h,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Text(
                  "lbl_coloca_el_dedo".tr,
                  style: CustomTextStyles.labelLargeSFProDisplayGray800bc,
                ),
              ],
            ),
          ),
          SizedBox(height: 34.h),
          CustomImageView(
            imagePath: ImageConstant.imgHuellaaRemovebgPreview,
            height: 96.h,
            width: 88.h,
          ),
          SizedBox(height: 18.h),
          Align(
            alignment: Alignment.centerLeft,
            child: SizedBox(
              height: 16.h,
              width: 106.h,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Text(
                    "msg_usar_otro_m_todo".tr,
                    style: CustomTextStyles.labelLargeSFProDisplayGray800bcBold,
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 10.h),
        ],
      ),
    );
  }
}
