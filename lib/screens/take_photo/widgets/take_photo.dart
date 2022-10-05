import 'dart:io';

import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fortune_telling/common/app_text_styles.dart';

import 'package:image_picker/image_picker.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../common/app_colors.dart';
import './../bloc/add_bloc.dart';

class TakePhoto extends StatefulWidget {
  TakePhoto({Key? key}) : super(key: key);

  @override
  State<TakePhoto> createState() => _TakePhotoState();
}

class _TakePhotoState extends State<TakePhoto> {
  final ImagePicker _picker = ImagePicker();

  //call when user take camera
  onTakeCamera() {
    context.read<AddCustomermBloc>().onTakeCamera(_imageFileList);
  }

  XFile? _imageFileList;

  // void _setImageFileListFromFile(XFile? value) {
  clickTakePhoto() async {
    final XFile? photo = await _picker.pickImage(
        source: ImageSource.camera, maxHeight: 300, maxWidth: 300);
    // _setImageFileListFromFile(photo);
    setState(() {
      _imageFileList = photo;
      onTakeCamera();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
          Column(
            children: [
              Container(
                padding: const EdgeInsets.only(left: 18),
                alignment: Alignment.topLeft,
                child: Text(
                  'Cập nhật ảnh của bạn',
                  style:
                      TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w600),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 15.h, top: 6.h, bottom: 6.h),
                child: InkWell(
                  onTap: () {
                    clickTakePhoto();
                  },
                  child: Container(
                    padding:
                        EdgeInsets.symmetric(vertical: 5.h, horizontal: 6.w),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.h),
                        border: Border.all(color: AppColors.primary)),
                    child: Row(
                      children: [
                        Icon(
                          Icons.image,
                          size: 35.h,
                          color: AppColors.primary,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Chụp ảnh',
                          style: AppTextStyle.black.copyWith(fontSize: 15.sp),
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
          Container(
              height: 130.h,
              width: 130.h,
              child: _imageFileList == null
                  ? Container(
                      decoration: BoxDecoration(
                          color: AppColors.primary,
                          border:
                              Border.all(width: 1, color: AppColors.primary),
                          borderRadius: BorderRadius.all(Radius.circular(2.h))),
                      child: Image.asset(
                        'assets/images/avatar_profile.png',
                        fit: BoxFit.cover,
                      ),
                    )
                  : Container(
                      height: 130.h,
                      width: 130.h,
                      child: Image.file(
                        File(_imageFileList!.path),
                        fit: BoxFit.cover,
                      ))),
        ]));
  }
}
