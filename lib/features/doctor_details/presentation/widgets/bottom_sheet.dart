import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theme/colors/colors.dart';
import '../../../../core/theme/text_themes/text.dart';
import '../../logic/cubit/doctor_details_cubit.dart';
import '../../logic/cubit/doctor_details_states.dart' as doctor;

void showAppointmentBottomSheet(BuildContext context,int id) {
  final doctorCubit = context.read<DoctorDetailsCubit>(); // ✅ هنا صح

  DateTime selectedDate = DateTime.now();
  TimeOfDay selectedTime = TimeOfDay.now();
  TextEditingController noteController = TextEditingController();

  showModalBottomSheet(
    context: context,
    backgroundColor: Colors.white,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(top: Radius.circular(25)),
    ),
    isScrollControlled: true,
    builder: (context) {
      return BlocProvider.value( // ✅ تمرير الـ Cubit هنا
        value: doctorCubit,
        child: Container(
          height: 300.h,
          child: Padding(
            padding: EdgeInsets.only(
              left: 20,
              right: 20,
              top: 20,
              bottom: MediaQuery.of(context).viewInsets.bottom + 20,
            ),
            child: Builder(
              builder: (context) {
                var cubit = context.read<DoctorDetailsCubit>(); // ✅ الآن متاح
                return Column(
                  children: [
                    Center(
                      child: Container(
                        width: 50,
                        height: 5,
                        decoration: BoxDecoration(
                          color: Colors.grey[400],
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Text("Choose Appointment Date", style: TextThemes.font13GreyRegular.copyWith(color: Colors.black)),
                        Spacer(),
                        MaterialButton(
                          onPressed: () async {
                            DateTime? picked = await showDatePicker(
                              context: context,
                              initialDate: DateTime.now(),
                              firstDate: DateTime.now(),
                              lastDate: DateTime.now().add(Duration(days: 365)),
                            );
                            if (picked != null) selectedDate = picked;
                          },
                          child: Text("Select Date"),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Row(
                      children: [
                        Text("Choose Time", style: TextThemes.font13GreyRegular.copyWith(color: Colors.black)),
                        Spacer(),
                        MaterialButton(
                          onPressed: () async {
                            TimeOfDay? pickedTime = await showTimePicker(
                              context: context,
                              initialTime: TimeOfDay.now(),
                            );
                            if (pickedTime != null) selectedTime = pickedTime;
                          },
                          child: Text("Select Time"),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Text("Add a Note", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                    TextField(
                      style: TextThemes.font14BlackSemiBold,
                      controller: noteController,
                      maxLines: 3,
                      decoration: InputDecoration(
                        hintText: "Enter your note here...",
                        hintStyle: TextStyle(color: Colors.grey),
                        border: OutlineInputBorder(),
                      ),
                    ),
                    SizedBox(height: 20),
                    MaterialButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.r),
                      ),
                      color: Colors.blue,
                      height: 50.h,
                      minWidth: double.infinity,
                      onPressed: () {
                        cubit.makeAppointment(
                          id,
                          selectedDate.toLocal().toString(),
                          noteController.text,
                        );
                      },
                      child: Text("Confirm Appointment",
                          style: TextThemes.font18BlackSemiBold.copyWith(color: Colors.white)),
                    ),
                    BlocListener<DoctorDetailsCubit, doctor.DoctorDetailsStates>(listener: ( context,  state) {
                      if(state is doctor.Success1){
                        Navigator.pop(context);
                        Navigator.pop(context);
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Appointment Made Successfully")));

                      }
                      if(state is doctor.Error2){
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(state.message)));
                      }
                      if(state is doctor.Loading1){
                        showDialog(
                          context: context,
                          builder:
                              (context) => Center(
                            child: CircularProgressIndicator(
                              color: AppColors.mainBlueColor,
                            ),
                          ),
                        );                      }
                    },
                    child: SizedBox(),)
                  ],
                );
              },
            ),
          ),
        ),
      );
    },
  );
}
