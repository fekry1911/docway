import 'dart:math';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theme/text_themes/text.dart';



class AppointmentCard extends StatelessWidget {
  AppointmentCard({
    super.key,
    required this.imageDoctor,
    required this.name,
    required this.specialize,
    required this.degree,
    required this.id,
    required this.appointment_time,
    this.elevation,

  });

  String? imageDoctor;
  String? name;
  String? specialize;
  String? degree;
  int? id;
  double? elevation = .1;
  String? appointment_time;

  List<String> imagesDoctors=[
    "assets/doctors/covid-coronavirus-outbreak-healthcare-workers-pandemic-concept-seriouslooking-professional-male.jpg",
    "assets/doctors/portrait-smiling-male-doctor-dressed-uniform.jpg",
    "assets/doctors/thoughtful-young-male-doctor-wearing-medical-robe-stethoscope-around-his-neck-putting-hand-chin-isolated-white-wall.jpg",
    "assets/doctors/thoughtful-young-male-doctor-wearing-medical-robe-stethoscope-touching-chin-isolated-purple-wall-with-copy-space.jpg",
    "assets/doctors/young-bearded-male-doctor-wearing-white-coat-with-stethoscope-looking-camera-with-hand-chin-with-pensive-expression-face.jpg",
    "assets/doctors/young-handsome-doctor-wearing-white-medical-gown-white-medical-gloves-stethoscope-looking-thoughtfully-standing-orange-wall.jpg",
    "assets/doctors/young-man-doctor-wearing-white-coat-stethoscope-standing-with-skeptic-facial-expression-touching-his-chin-thinking.jpg",
  ];


  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: elevation,
      borderOnForeground: true,
      color: Colors.white,
      child: Padding(
        padding: EdgeInsets.all(5.h),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(30.r)),
                child: CachedNetworkImage(
                  height: 110.h,
                  width: 110.w,
                  imageUrl: imageDoctor!,
                  placeholder: (context, url) => const CircularProgressIndicator(),
                  errorWidget: (context, url, error) {
                    final randomImage = imagesDoctors[Random().nextInt(imagesDoctors.length)];
                    return Image.asset(
                      randomImage,
                      height: 110.h,
                      width: 110.w,
                      fit: BoxFit.cover,
                    );
                  },
                  fit: BoxFit.cover,
                )
            ),
            SizedBox(width: 16.w),
            Container(
              margin: EdgeInsets.only(top: 25.5.h, bottom: 25.5.h),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name!,
                    style: TextThemes.font16BlackBold.copyWith(
                      overflow: TextOverflow.ellipsis,
                    ),
                    maxLines: 2,
                  ),
                  SizedBox(height: 8.h),
                  Row(
                    children: [
                      Text(specialize!, style: TextThemes.font12GreyMedium),
                      SizedBox(width: 5.w),
                      Text("|", style: TextThemes.font12GreyMedium),
                      SizedBox(width: 5.w),
                      Text(degree!, style: TextThemes.font12GreyMedium),
                    ],
                  ),
                  SizedBox(height: 10.h),
                  Text(appointment_time!.replaceAll(",", "\n"), style: TextThemes.font12GreyMedium.copyWith(height: 1.2.h),)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
