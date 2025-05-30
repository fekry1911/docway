import 'package:docway/features/doctor_details/presentation/widgets/bottom_sheet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/shared_widgets/card.dart';
import '../../../core/theme/text_themes/text.dart';
import '../logic/cubit/doctor_details_cubit.dart';
import '../logic/cubit/doctor_details_states.dart' as doctorDetails;

class DoctorDetailsUi extends StatelessWidget {
  const DoctorDetailsUi({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<DoctorDetailsCubit, doctorDetails.DoctorDetailsStates>(
  listener: (context, state) {
  },
  builder: (context, state) {
    var cubit=context.read<DoctorDetailsCubit>();
    if(state is doctorDetails.Loading){
      return Container(
          color: Colors.white,
          child: Center(child: CircularProgressIndicator()));
    }
    if(state is doctorDetails.Error){
      return Center(

          child: Text(state.message));
    }
    return Scaffold(
      appBar: AppBar(
        title: Text(cubit.doctorDetailsResponse!.data.name),

      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              CardDetails(imageDoctor: '', name: cubit.doctorDetailsResponse!.data.name, specialize: cubit.doctorDetailsResponse!.data.specialization.name, degree: cubit.doctorDetailsResponse!.data.degree,elevation: 0, id:1),
              SizedBox(width: 7.w,),
              Icon(Icons.message_outlined,color: Colors.blue,size: 30.r,)
            ],
          ),
          SizedBox(height: 28.h,),
          Container(
            margin: EdgeInsets.only(left: 5.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("About",style: TextThemes.font16BlueBold,),
                SizedBox(height: 28.h,),
                Text("About Me",style: TextThemes.font14BlackSemiBold,),
                SizedBox(height: 12.h,),
                Text("${cubit.doctorDetailsResponse!.data.name}is the top most Immunologists specialist in Christ Hospital at London. She achived several awards for her wonderful contribution in medical field. She is available for private consultation.",style: TextThemes.font14LightDarkRegular,),
                SizedBox(height: 28.h,),
                Text("Working Time",style: TextThemes.font14BlackSemiBold,),
                SizedBox(height: 12.h,),
                Text("Monday - Friday, ${cubit.doctorDetailsResponse!.data.startTime} - ${cubit.doctorDetailsResponse!.data.endTime}" ,style: TextThemes.font14LightDarkRegular,),
                SizedBox(height: 28.h,),
                Text("Practice Place",style: TextThemes.font14BlackSemiBold,),
                SizedBox(height: 12.h,),
                Text("${cubit.doctorDetailsResponse!.data.city.name}\n${cubit.doctorDetailsResponse!.data.address}",style: TextThemes.font14LightDarkRegular,),
                SizedBox(height: 28.h,),
                Text("Appoint Price",style: TextThemes.font14BlackSemiBold,),
                SizedBox(height: 12.h,),
                Text(cubit.doctorDetailsResponse!.data.appointPrice.toString(),style: TextThemes.font14LightDarkRegular,)
              ],
            ),
          ),
          SizedBox(height: 17.h,),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20.w,vertical: 20),
            child: MaterialButton(
              height: 52.h,
              minWidth: double.infinity,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.r),
              ),
              onPressed: (){
                showAppointmentBottomSheet(context,cubit.doctorDetailsResponse!.data.id);
              },color: Colors.blue,child: Text("Make An Appointment",style: TextThemes.font16WhiteSemiBold,),),
          )
        ],
      ),
    );

  },
);
  }
}
