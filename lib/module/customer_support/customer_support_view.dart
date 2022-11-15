import 'package:astro_app/utils/packag.dart';
import 'package:astro_app/utils/styles.dart';
import 'package:astro_app/widget/appbar.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class CustomerSupportScreen extends StatefulWidget {
  const CustomerSupportScreen({Key? key}) : super(key: key);

  @override
  State<CustomerSupportScreen> createState() => _CustomerSupportScreenState();
}

class _CustomerSupportScreenState extends State<CustomerSupportScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppbar(title: 'Customer Support'),
      body: SingleChildScrollView(
          child: Column(
        // crossAxisAlignment: CrossAxisAlignment.center,
        // mainAxisAlignment: MainAxisAlignment.center,

        children: [
          6.h.heightBox,
          Text(
            'Tell us how we can help',
            style: textRegularL,
          ),
          4.h.heightBox,
          Flex(direction: Axis.vertical, children: [
            Text(
              'Our crew members are standing by service & support',
              style: txtGrey,
              textAlign: TextAlign.center,
            ).pSymmetric(h: 60),
          ]),
          8.h.heightBox,
          Container(
            height: 100,
            width: 90.w,
            decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(
                  Radius.circular(8),
                ),
                border: Border.all(color: greyClr, width: 1)),
            child: (Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Phone Call',
                      style: txtblackNormal,
                    ),
                    Icon(Icons.arrow_forward_ios_rounded, size: 12),
                  ],
                ).pOnly(left: 15, right: 15, top: 15),
                10.heightBox,
                Text('Call us 24 x 7, we will answer you!')
                    .objectCenterLeft()
                    .paddingSymmetric(horizontal: 15),
                10.heightBox,
                Text(
                  '+919456415214',
                  style: TextStyle(color: Colors.green),
                ).objectCenterLeft().paddingSymmetric(horizontal: 15),
              ],
            )),
          ),
          10.heightBox,
          Container(
            height: 100,
            width: 90.w,
            decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(
                  Radius.circular(8),
                ),
                border: Border.all(color: greyClr, width: 1)),
            child: (Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Email',
                      style: txtblackNormal,
                    ),
                    Icon(Icons.arrow_forward_ios_rounded, size: 12),
                  ],
                ).pOnly(left: 15, right: 15, top: 15),
                10.heightBox,
                Text('Get solutions beamed to your inbox')
                    .objectCenterLeft()
                    .paddingSymmetric(horizontal: 15),
                10.heightBox,
                Text(
                  'support@name.in',
                  style: TextStyle(color: Colors.green),
                ).objectCenterLeft().paddingSymmetric(horizontal: 15),
              ],
            )),
          ),
          10.heightBox,
          Container(
            height: 100,
            width: 90.w,
            decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(
                  Radius.circular(8),
                ),
                border: Border.all(color: greyClr, width: 1)),
            child: (Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Whatsapp Chat',
                      style: txtblackNormal,
                    ),
                    Icon(Icons.arrow_forward_ios_rounded, size: 12),
                  ],
                ).pOnly(left: 15, right: 15, top: 15),
                10.heightBox,
                Text('Start a conversion on whatsapp now!')
                    .objectCenterLeft()
                    .paddingSymmetric(horizontal: 15),
                10.heightBox,
                Text(
                  '+919441541025',
                  style: TextStyle(color: Colors.green),
                ).objectCenterLeft().paddingSymmetric(horizontal: 15),
              ],
            )),
          ),
        ],
      ).centered().paddingAll(15)),
    );
  }
}
