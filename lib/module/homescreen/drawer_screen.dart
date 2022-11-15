
import 'package:astro_app/module/Refer%20And%20Earn/refer_earn.dart';
import 'package:astro_app/module/customer_support/customer_support_view.dart';
import 'package:astro_app/module/feedback/feedback_view.dart';
import 'package:astro_app/module/settings/settings.dart';
import 'package:astro_app/module/wallet/wallet_screen.dart';
import 'package:astro_app/utils/packag.dart'; 

class DrawerMenu extends StatelessWidget {
  const DrawerMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          Image.asset('assets/icons/logo.png',
           height: 8.h, 
          fit: BoxFit.fitHeight,
          ),
          const Divider(),
          InkWell(
            onTap: () {
              Get.to(() => WalletScreen());
            },
            child: ListTile(
              dense: true,
              leading: Image.asset('assets/icons/outline_wallet.png'),
              title: Text('Wallet balance'),
            ),
          ),
          InkWell(
            onTap: () {
              Get.to(() =>ReferEarnScreen());
            },
            child: ListTile(
                dense: true,
                leading: Image.asset('assets/icons/outline_refer.png'),
                title: Text('Enter refer code')),
          ),
          ListTile(
              dense: true,
              leading: Image.asset('assets/icons/outline_bill.png'),
              title: Text('Order history')),
          InkWell(
            onTap: () {
              Get.to(() => CustomerSupportScreen());
            },
            child: ListTile(
                dense: true,
                leading: Image.asset('assets/icons/outline_support.png'),
                title: Text('Customer support')),
          ),
          InkWell(
            onTap: () {
              Get.to(() =>ReferEarnScreen());
            },
            child: ListTile(
                dense: true,
                leading: Image.asset('assets/icons/outline_refer.png'),
                title: Text('Refer and earn')),
          ),
          ListTile(
              dense: true,
              leading: Image.asset('assets/icons/outline_star.png'),
              title: Text('Rate us')),
          InkWell(
            onTap: () {
              Get.to(() => FeedbackScreen());
            },
            child: ListTile(
                dense: true,
                leading: Image.asset('assets/icons/outline_edit.png'),
                title: Text('Send feedback')),
          ),
          ListTile(
              dense: true,
              leading: Image.asset('assets/icons/outline_share.png'),
              title: Text('Share')),
          InkWell(
            onTap: () {
              Get.to(() => SettingScreen());
            },
            child: ListTile(
                dense: true,
                leading: Image.asset('assets/icons/outline_setting.png'),
                title: Text('Setting')),
          ),
        ],
      ),
    );
  }
}