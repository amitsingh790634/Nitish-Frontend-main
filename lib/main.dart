
import 'package:astro_app/module/onboard/splash_screen.dart'; 
import 'package:astro_app/utils/palette.dart';
import 'package:get_storage/get_storage.dart'; 
import 'package:google_fonts/google_fonts.dart';
import 'package:astro_app/utils/packag.dart';

void main() async {
  await GetStorage.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      return GetMaterialApp(
        title: 'Astro_app',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          fontFamily: 'Roboto',
          textTheme: GoogleFonts.robotoTextTheme(
            Theme.of(context).textTheme,
         ),
          primarySwatch: Palette.kToDark,
          // primarySwatch: Colors.amber,
        ),
        home: SplashScreen(),
      );
    });
  }
}
