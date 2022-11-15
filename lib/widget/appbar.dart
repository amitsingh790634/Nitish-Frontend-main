import 'package:astro_app/utils/packag.dart';
import 'package:astro_app/utils/styles.dart';

class MyAppbar extends StatelessWidget implements PreferredSizeWidget {
  String title;

  MyAppbar({required this.title, super.key});

  @override
  Size get preferredSize => Size(double.infinity, 7.h);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      // backgroundColor: appbg,
      centerTitle: true,
      leading: IconButton(
        onPressed: () => Get.back(),
        icon: const Icon(
          Icons.arrow_back,
          size: 25,
          color: blckclr,
        ),
      ),
      title: Text(title,
          style: const TextStyle(
              color: Color(0xff0F0F0F),
              fontSize: 16,
              fontWeight: FontWeight.w400,
              fontFamily: 'Roboto')),
    );
  }
}
