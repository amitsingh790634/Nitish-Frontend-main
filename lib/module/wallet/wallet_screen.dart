import 'package:astro_app/module/wallet/payment_screen.dart';
import 'package:astro_app/utils/packag.dart';
import 'package:astro_app/utils/styles.dart';
import 'package:astro_app/widget/appbar.dart';

class WalletScreen extends StatefulWidget {
  const WalletScreen({super.key});

  @override
  State<WalletScreen> createState() => _WalletScreenState();
}

class _WalletScreenState extends State<WalletScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: MyAppbar(
          title: 'Wallet',
        ),
        body: SingleChildScrollView(
          padding: EdgeInsets.only(left: 10, top: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Available balance",
                style: txtbigBlack,
              ),
              SizedBox(
                height: 2.h,
              ),
              Text(
                "₹0",
                style: txtbigBlack,
              ),
              SizedBox(
                height: 2.h,
              ),
              Text(
                'Choose from the available recharge packs',
                style: txtGrey,
              ),
              SizedBox(
                height: 5.h,
              ),
              Wrap(
                alignment: WrapAlignment.spaceBetween,
                spacing: 20.0,
                runSpacing: 14.0,
                children: [
                  Container(
                      height: 8.h,
                      width: 28.w,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(width: 1.0, color: greyClr)),
                      child: Text(
                        '₹100',
                        style: txtblackNormal,
                      )).onTap(() => Get.to(PaymentScreen())),
                  Container(
                      height: 8.h,
                      width: 28.w,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(width: 1.0, color: greyClr)),
                      child: Text(
                        '₹200',
                        style: txtblackNormal,
                      )).onTap(() => Get.to(PaymentScreen())),
                  Container(
                      height: 8.h,
                      width: 28.w,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(width: 1.0, color: greyClr)),
                      child: Text(
                        '₹500',
                        style: txtblackNormal,
                      )).onTap(() => Get.to(PaymentScreen())),
                  Container(
                      height: 8.h,
                      width: 28.w,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(width: 1.0, color: greyClr)),
                      child: Text(
                        '₹100',
                        style: txtblackNormal,
                      )).onTap(() => Get.to(PaymentScreen())),
                  Container(
                      height: 8.h,
                      width: 28.w,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(width: 1.0, color: greyClr)),
                      child: Text(
                        '₹200',
                        style: txtblackNormal,
                      )).onTap(() => Get.to(PaymentScreen())),
                  Container(
                      height: 8.h,
                      width: 28.w,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(width: 1.0, color: greyClr)),
                      child: Text(
                        '₹800',
                        style: txtblackNormal,
                      )).onTap(() => Get.to(PaymentScreen())),
                  Container(
                      height: 8.h,
                      width: 28.w,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(width: 1.0, color: greyClr)),
                      child: Text(
                        '₹100',
                        style: txtblackNormal,
                      )).onTap(() => Get.to(PaymentScreen())),
                  Container(
                      height: 8.h,
                      width: 28.w,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(width: 1.0, color: greyClr)),
                      child: Text(
                        '₹200',
                        style: txtblackNormal,
                      )).onTap(() => Get.to(PaymentScreen())),
                  Container(
                      height: 8.h,
                      width: 28.w,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(width: 1.0, color: greyClr)),
                      child: Text(
                        '₹500',
                        style: txtblackNormal,
                      )).onTap(() => Get.to(PaymentScreen())),
                ],
              ),
              SizedBox(
                height: 5.h,
              ),
              Center(
                child: Text(
                  'Your recharge pack can be used for multiple astrologers',
                  style: txtGrey,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
