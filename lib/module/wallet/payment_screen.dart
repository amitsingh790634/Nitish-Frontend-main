import 'package:astro_app/utils/packag.dart';
import 'package:astro_app/utils/styles.dart';
import 'package:astro_app/widget/appbar.dart';

class PaymentScreen extends StatelessWidget {
  const PaymentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: MyAppbar(
          title: 'Payment',
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            2.h.heightBox,
            Padding(
              padding: const EdgeInsets.only(left: 10.0, bottom: 20, top: 30),
              child: Text(
                'Payment deatils',
                style: txtGreyL,
              ),
            ),
            1.h.heightBox,
            Padding(
              padding: const EdgeInsets.only(left: 10.0, bottom: 15, right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Total amount',
                    style: txtGrey,
                  ),
                  Text(
                    '₹500.00',
                    style: txtGrey,
                  ),
                ],
              ),
            ),
            0.5.h.heightBox,
            Padding(
              padding: const EdgeInsets.only(left: 10.0, bottom: 15, right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'GST @ 18 %',
                    style: txtGrey,
                  ),
                  Text(
                    '₹90',
                    style: txtGrey,
                  ),
                ],
              ),
            ),
            0.5.h.heightBox,
            Padding(
              padding: const EdgeInsets.only(left: 10.0, bottom: 25, right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Total payable amount',
                    style: txtGrey,
                  ),
                  Text(
                    '₹590',
                    style: txtGrey,
                  ),
                ],
              ),
            ),
            2.h.heightBox,
            Image.asset(
              'assets/images/adds.png',
              width: double.infinity,
            ),
            SizedBox(
              height: 4.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Image.asset(
                  'assets/images/paytm.png',
                  width: 15.w,
                ),
                Image.asset(
                  'assets/images/upi.png',
                  width: 15.w,
                ),
                Image.asset(
                  'assets/images/phonepe.png',
                  width: 15.w,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
