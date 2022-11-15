import 'package:astro_app/utils/packag.dart';
import 'package:astro_app/utils/styles.dart';
import 'package:astro_app/widget/appbar.dart';

class FeedbackScreen extends StatefulWidget {
  const FeedbackScreen({Key? key}) : super(key: key);

  @override
  State<FeedbackScreen> createState() => _FeedbackScreenState();
}

class _FeedbackScreenState extends State<FeedbackScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: appbg,
        appBar: MyAppbar(title: 'Feedback'),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              2.h.heightBox,
              Text(
                'Send Your Feedback',
                style: txtblackNormal,
              ),
              2.h.heightBox,
              Text(
                'Tell us your honest feedback to help us improve',
                style: txtGrey,
              ),
              4.h.heightBox,
              // Container(
              //   height: 200,
              //   width: 100.w,
              //   decoration: BoxDecoration(
              //     border: Border.all(
              //       color: greyClr,
              //     ),
              //     borderRadius: BorderRadius.all(
              //       Radius.circular(10),
              //     ),
              //   ),
              //   child:
              TextFormField(
                minLines: 8,
                maxLines: 10,
                keyboardType: TextInputType.multiline,
                decoration: const InputDecoration(
                  hintText: 'Enter Your Feedback',
                  hintStyle: TextStyle(color: Colors.grey),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  ),
                ),
              ),
              // TextField(
              //     minLines: null,
              //     maxLines: null,
              //     enableInteractiveSelection: false,
              //     expands: true,
              //     decoration: InputDecoration(
              //         label: Text('Enter Your Feedback').objectTopLeft(),
              //         contentPadding: EdgeInsets.all(15))),
              // ).centered(),
              6.h.heightBox,
              ElevatedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(btnorange),
                          foregroundColor: MaterialStateProperty.all(whiteclr),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0),
                            // side: BorderSide(color: Colors.red)
                          ))),
                      child: Text('SUBMIT FEEDBACK'))
                  .w(80.w)
                  .h(45)
                  .centered()
            ],
          ),
        ).pOnly(top: 20, left: 15, right: 15));
  }
}
