import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/widgets/custome_text_form_field.dart';
import 'package:flutter_application_1/features/home_screen/home_screen.dart';
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
                key: _formKey, // ربط الفورم بالمفتاح
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 30.h),
                    // Top Row
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Hello!",
                          style: TextStyle(color: Colors.white, fontSize: 26.sp),
                        ),
                        IconButton(
                          icon: Icon(
                            Icons.arrow_back_ios_new,
                            color: Colors.white,
                            size: 20.sp,
                          ),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        ),
                      ],
                    ),
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
                              builder: (context) => const HomeScreen(),
                            ),
                          );
                        } else {
                          print('Error: Form is invalid or empty');
                        }
                      },
                    ),
                    SizedBox(height: 50.h),
                    Center(
                      child: Text.rich(
                        TextSpan(
                          text: "Create a new ",
                          style: TextStyle(
                            color: Colors.white70,
                            fontSize: 25.sp,
                          ),
                          children: [
                            TextSpan(
                              text: "account",
                              style: TextStyle(
                                color: Color(0xffFFB23E),
                                decoration: TextDecoration.underline,
                                decorationThickness: 1,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 40.h),
                    Center(
                      child: Text(
                        "Or",
                        style: TextStyle(color: Colors.white, fontSize: 20.sp),
                      ),
                    ),
                    SizedBox(height: 36.h),
                    Container(
                      height: 52.h,
                      padding: EdgeInsets.symmetric(horizontal: 8.w),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12.r),
                        border: Border.all(color: Colors.white),
                      ),
                      child: Row(
                        children: [
                          Text(
                            "Sign up with",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 21.sp,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Spacer(),
                          Container(
                            height: 40.h,
                            width: 40.w,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(12.r),
                            ),
                            child: Image.asset(
                              'assets/images/google.png',
                              fit: BoxFit.contain,
                            ),
                          ),
                          SizedBox(width: 20.w),
                          Container(
                            height: 40.h,
                            width: 40.w,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(12.r),
                            ),
                            child: Icon(
                              Icons.apple,
                              color: Colors.black,
                              size: 36.sp,
                            ),
                          ),
                        ],
                      ),
                    ),
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