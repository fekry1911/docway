import 'package:docway/features/show_appointment/presentation/widgets/appointment_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../logic/cubit/appointment_cubit.dart';
import '../logic/cubit/appointment_response_states.dart' as appointment;

class ShowwAllAppointment extends StatelessWidget {
  const ShowwAllAppointment({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("My Appointment"), centerTitle: true),
      body: BlocConsumer<
        AppointmentResponseApiCubit,
        appointment.AppointmentResponseStates
      >(
        builder: (BuildContext context, state) {
          if (state is appointment.Loading) {
            return Center(child: CircularProgressIndicator());
          } else if (state is appointment.Error) {
            return Center(child: Text(state.message));
          } else {
            var cubit = context.read<AppointmentResponseApiCubit>();
            return ListView.builder(
              itemCount: cubit.appointmentApiResponse!.data.length,
              itemBuilder: (BuildContext context, int index) {
                return AppointmentCard(
                  imageDoctor: '',
                  name: cubit.appointmentApiResponse!.data[index].doctor.name,
                  specialize:
                      cubit
                          .appointmentApiResponse!
                          .data[index]
                          .doctor
                          .specialization!
                          .name,
                  degree:
                      cubit.appointmentApiResponse!.data[index].doctor.degree,
                  id: null,
                  appointment_time:
                      cubit.appointmentApiResponse!.data[index].appointmentTime,
                );
              },
            );
          }
        },
        listener: (BuildContext context, Object? state) {},
      ),
    );
  }
}
