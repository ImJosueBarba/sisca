import 'package:flutter/material.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../app_theme.dart';
import '../app_utils.dart';
import '../routes/app_routes.dart';
import '../widgets.dart';
import 'reconocimiento_facial_fallido_bloc.dart';

class ReconocimientoFacialFallidoScreen extends StatelessWidget {
  const ReconocimientoFacialFallidoScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<ReconocimientoFacialFallidoBloc>(
      create: (context) => ReconocimientoFacialFallidoBloc(
        ReconocimientoFacialFallidoState(
          reconocimientoFacialFallidoModelObj: ReconocimientoFacialFallidoModel(),
        ),
      )..add(ReconocimientoFacialFallidoInitialEvent()),
      child: const ReconocimientoFacialFallidoScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ReconocimientoFacialFallidoBloc, ReconocimientoFacialFallidoState>(
      builder: (context, state) {
        return Scaffold(
          backgroundColor: appTheme.whiteA700,
          appBar: _buildAppBar(context),
          body: SafeArea(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 34.0, vertical: 22.0),
                child: Column(
                  children: [
                    const SizedBox(height: 54.0),
                    _buildDottedBorder(),
                    const SizedBox(height: 50.0),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Padding(
                        padding: const EdgeInsets.only(right: 46.0),
                        child: Text(
                          "lbl_verificando".tr,
                          style: Theme.of(context).textTheme.displaySmall,
                        ),
                      ),
                    ),
                    Text(
                      "msg_acerca_tu_rostro".tr,
                      style: CustomTextStyles.titleMediumSFProDisplayGray800bc,
                    ),
                    const SizedBox(height: 106.0),
                    _buildWarningRow(context),
                    const SizedBox(height: 78.0),
                    Text(
                      "lbl_version_1_0".tr,
                      style: CustomTextStyles.titleSmallGray800,
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 45.0,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgArrow2,
        height: 3.0,
        width: 26.0,
        margin: const EdgeInsets.only(left: 19.0),
      ),
    );
  }

  Widget _buildDottedBorder() {
    return DottedBorder(
      color: appTheme.deepOrangeA700,
      padding: const EdgeInsets.all(4.0),
      strokeWidth: 4.0,
      radius: const Radius.circular(200.0),
      borderType: BorderType.RRect,
      dashPattern: const [14, 14],
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 28.0),
        child: Container(
          height: 400.0,
          width: 288.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(200.0),
          ),
        ),
      ),
    );
  }

  Widget _buildWarningRow(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgExclamacionRemovebgPreview,
          height: 32.0,
          width: 32.0,
        ),
        const SizedBox(width: 4.0),
        Align(
          alignment: Alignment.bottomCenter,
          child: Text(
            "msg_por_favor_acerca".tr,
            style: CustomTextStyles.titleLargeRed400,
          ),
        ),
      ],
    );
  }
}
