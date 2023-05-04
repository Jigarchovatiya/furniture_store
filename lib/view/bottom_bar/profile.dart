import 'package:flutter/material.dart';
import 'package:furniture_store/res/constant/app_assets.dart';
import 'package:furniture_store/res/constant/app_colors.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      // Navigator.pushReplacement(context, MaterialPageRoute(
                      //   builder: (context) {
                      //     return BottomNavigationBarPage();
                      //   },
                      // ));
                    },
                    child: const CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 25,
                      child: Icon(
                        Icons.arrow_back,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Row(
                    children: const [
                      Text('Profile'),
                    ],
                  ),
                  const CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 25,
                  ),
                ],
              ),
              const CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage(AppAssets.profile),
              ),
              Container(
                margin: const EdgeInsets.only(top: 10),
                child: const Text('Mansurul Hoque'),
              ),
              Container(
                margin: const EdgeInsets.only(top: 5),
                child: const Text('mailto:mansurul952@gmail.com'),
              ),
              Container(
                margin: const EdgeInsets.only(top: 20),
                height: 56,
                width: 327,
                decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10)),
                child: Row(
                  children: [
                    const Icon(
                      Icons.account_circle_outlined,
                      color: AppColors.black,
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 15),
                      child: const Text('Profile'),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 20),
                height: 56,
                width: 327,
                decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10)),
                child: Row(
                  children: [
                    const Icon(
                      Icons.payment,
                      color: AppColors.black,
                    ),
                    Container(margin: const EdgeInsets.only(left: 15), child: const Text('Payment Methods'))
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 20),
                height: 56,
                width: 327,
                decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10)),
                child: Row(
                  children: [
                    const Icon(
                      Icons.payment,
                      color: AppColors.black,
                    ),
                    Container(margin: const EdgeInsets.only(left: 15), child: const Text('Order history'))
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 20),
                height: 56,
                width: 327,
                decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10)),
                child: Row(
                  children: [
                    // AppIcon.orderSvg().marginOnly(left: 25),
                    const Icon(
                      Icons.delivery_dining,
                      color: AppColors.black,
                    ),
                    Container(margin: const EdgeInsets.only(left: 15), child: const Text('Delivery Address'))
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 20),
                height: 56,
                width: 327,
                decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10)),
                child: Row(
                  children: [
                    const Icon(
                      Icons.delivery_dining,
                      color: AppColors.black,
                    ),
                    Container(margin: const EdgeInsets.only(left: 15), child: const Text('Support Center'))
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 20),
                height: 56,
                width: 327,
                decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10)),
                child: Row(
                  children: [
                    // AppIcon.orderSvg().marginOnly(left: 25),
                    const Icon(
                      Icons.policy_outlined,
                      color: AppColors.black,
                    ),
                    Container(margin: const EdgeInsets.only(left: 15), child: const Text('Legal Policy'))
                  ],
                ),
              ),
              const Text(
                'Log Out',
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16, color: Color(0xffEA3549)),
              ),
              const SizedBox(
                height: 50,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
