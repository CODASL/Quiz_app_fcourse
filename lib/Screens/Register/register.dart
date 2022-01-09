import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quiz_app/Models/screensize.dart';
import 'package:quiz_app/Providers/register_widgets.dart';
import 'package:quiz_app/Widgets/Login/bg.dart';
import 'package:quiz_app/Widgets/Login/logobox.dart';
import 'package:quiz_app/Widgets/common/custom_textfield.dart';
import 'package:scale_button/scale_button.dart';

class Register extends StatelessWidget {
  const Register({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const LoginBackground(),
          logoBox(),
          const TextFieldStack(),
          const NextPageButton(),
        ],
      ),
    );
  }
}

class TextFieldStack extends StatelessWidget {
  const TextFieldStack({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final data = Provider.of<RegisterWidgets>(context, listen: true);
    return SizedBox(
      height: ScreenSize.height! * 0.6,
      //color: kblack,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(
              height: ScreenSize.height! * 0.2,
              // color: Colors.red,
              child: IndexedStack(
                index: data.index,
                alignment: AlignmentDirectional.center,
                children: [
                  //0
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: ScreenSize.width! * 0.1),
                    child: const CustomTextField(
                      prefixIcon: Icons.person,
                      hintText: "Full Name",
                    ),
                  ),

                  //1
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: ScreenSize.width! * 0.1),
                    child: const CustomTextField(
                      hintText: "Email Or Phone Number",
                      prefixIcon: Icons.mail,
                    ),
                  ),

                  //2
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: ScreenSize.width! * 0.1),
                    child: const CustomTextField(
                      isPassword: true,
                      hintText: "Create Password",
                      prefixIcon: Icons.lock_open,
                    ),
                  ),

                  //3
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: ScreenSize.width! * 0.1),
                    child: const CustomTextField(
                      isPassword: true,
                      hintText: "Confirm Password",
                      prefixIcon: Icons.lock,
                    ),
                  ),
                ],
              ))
        ],
      ),
    );
  }
}

class NextPageButton extends StatelessWidget {
  const NextPageButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: SizedBox(
          height: ScreenSize.height! * 0.12,
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: FloatingActionButton.large(
                  child: const Icon(Icons.arrow_forward),
                  onPressed: () {
                    
                    Provider.of<RegisterWidgets>(context, listen: false)
                        .onChange(context);
                  }),
            ),
          )),
    );
  }
}
