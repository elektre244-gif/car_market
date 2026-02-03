import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/widgets/custome_text_form_field.dart';
import 'package:flutter_application_1/features/buy_or_sale_screen/buy_or_sale_screen.dart';
import 'package:flutter_application_1/features/find_otp_screen/find_otp_screen.dart';
import 'package:flutter_application_1/features/home_screen/home_screen.dart';
import 'package:flutter_application_1/features/opt_screen/widget/custom_sign_up_contanier.dart';
import 'package:flutter_application_1/features/opt_screen/widget/custom_text_rich.dart';
import 'package:flutter_application_1/features/opt_screen/widget/hello_text.dart';
import 'widget/get_Otp_Button.dart';
import 'widget/welcome_text.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({super.key});

  @override
  _OtpScreenState createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  final _formKey = GlobalKey<FormState>();
  final _phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        body: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12.r),
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              stops: [0.0, 0.7, 1.0],
              colors: [Color(0xFF131212), Color(0xFF131212), Color(0xFFCBC6C6)],
            ),
          ),
          child: SafeArea(
            child: SingleChildScrollView(
              padding: EdgeInsets.all(15),
              child: Form(
                key: _formKey, 
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 30.h),
                   HelloText(),
                    SizedBox(height: 22.85.h),
                    CustomWelcomeText(),
                    SizedBox(height: 95.h),
                    Text(
                      "Enter your mobile no",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 20.sp,
                      ),
                    ),
                    SizedBox(height: 23.14.h),
                    CustomeTextFormField(text: "Enter phone no"),
                    SizedBox(height: 39.86.h),
                    GetOtpButton(
                      onPressed: () {
                        if (_formKey.currentState != null &&
                            _formKey.currentState!.validate()) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>FindOtpScreen(),
                            ),
                          );
                        } else {
                          print('Error: Form is invalid or empty');
                        }
                      }, name: 'Get Otp',
                    ),
                    SizedBox(height: 50.h),
                CustomTextRich(),
                  
                    SizedBox(height: 36.h),
                   CustomSignUpContanier(),
                    SizedBox(height: 30.h),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}