import 'package:easy_debounce/easy_debounce.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theme/colors/colors.dart';
import '../../logic/cubit/doctor_cubit.dart';

class SearchAndFilter extends StatefulWidget {
  const SearchAndFilter({super.key});

  @override
  State<SearchAndFilter> createState() => _SearchAndFilterState();
}

class _SearchAndFilterState extends State<SearchAndFilter> {
  @override
  void dispose() {
    EasyDebounce.cancel('search-docs'); // ← إلغاء المؤقت
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Row(
        children: [
          SizedBox(
            width: 280.w,
            child: TextFormField(
              style: TextStyle(color: Colors.black),
              onChanged: (value) {
                EasyDebounce.debounce(
                    'search-docs', Duration(milliseconds: 600),
                    (){
                      if (value
                          .trim()
                          .isEmpty) {
                        context.read<DoctorCubit>().getAllDocs();
                      }
                      else{
                        context.read<DoctorCubit>().searchAboutDocs(value);
                      }
                    });

              },
              decoration: InputDecoration(

                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(20.r),
                ),
                filled: true,
                fillColor: AppColors.darkGrey,
                prefixIcon: Icon(Icons.search),
                hintText: "Search",
              ),
            ),
          ),
          SizedBox(width: 10.w,),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.filter_list_outlined, color: AppColors.darkBBlack,
              size: 25.h,),
          ),
        ],
      ),
    );
  }
}
