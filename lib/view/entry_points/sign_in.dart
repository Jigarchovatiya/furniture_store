import 'package:flutter/material.dart';
import 'package:furniture_store/res/common/app_button.dart';
import 'package:furniture_store/res/common/app_text_field.dart';
import 'package:furniture_store/res/constant/app_assets.dart';
import 'package:furniture_store/res/constant/app_strings.dart';
import 'package:furniture_store/res/extensions/extensions.dart';

import '../../res/constant/app_colors.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool password = true;
  bool validator = true;
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CircleAvatar(
                  radius: 30,
                  backgroundColor: AppColors.white,
                  foregroundColor: AppColors.black,
                  child: BackButton(),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 50,
                ),
                const Text(
                  AppStrings.welComeBack,
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 32,
                    color: AppColors.appTextColor,
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 100,
                ),
                const Text(
                  AppStrings.welComeBackMsg,
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                    color: AppColors.appTextColorTow,
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 20,
                ),
                const Text(
                  AppStrings.eMail,
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                    color: AppColors.appTextColor,
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 80,
                ),
                AppTextField(
                  validator: (value) => value!.isValidEmail() ? null : "Please Enter E-mail",
                  hintText: AppStrings.eMailHint,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 80,
                ),
                const Text(
                  AppStrings.password,
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                    color: AppColors.appTextColor,
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 80,
                ),
                AppTextField(
                  validator: (value) => value!.isValidPassword() ? null : "Please Enter E-mail",
                  hintText: AppStrings.passwordHint,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 80,
                ),
                Row(
                  children: [
                    IconButton(
                      splashRadius: 1,
                      onPressed: () {
                        setState(() {
                          isChecked = !isChecked;
                        });
                      },
                      icon: Container(
                        child: isChecked
                            ? Container(
                                height: 20,
                                width: 20,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(6),
                                  border: Border.all(width: 2, color: AppColors.appTextColor),
                                ),
                                child: const Icon(Icons.check, size: 15),
                              )
                            : Container(
                                height: 20,
                                width: 20,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(6),
                                  border: Border.all(width: 1, color: AppColors.appTextColorTow),
                                ),
                              ),
                      ),
                    ),
                    const Text(
                      AppStrings.checkBox,
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        color: AppColors.appTextColorTow,
                      ),
                    ),
                    const Spacer(),
                    const Text(
                      AppStrings.forgotPassword,
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        color: AppColors.appTextColor,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 50,
                ),
                Center(
                  child: AppButton(
                    color: AppColors.themeColor,
                    onTap: () {},
                    title: AppStrings.signIn,
                    style: const TextStyle(color: AppColors.white, fontSize: 16, fontWeight: FontWeight.w600),
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height / 50),
                Center(
                  child: AppButton(
                    image: AppAssets.google,
                    height: 24,
                    color: AppColors.white,
                    onTap: () {},
                    title: AppStrings.signInWithGoogle,
                    style: const TextStyle(color: AppColors.black, fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                ),
                RichText(
                  text: const TextSpan(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
