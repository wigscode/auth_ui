import 'package:auth_ui/components/button_custom.dart';
import 'package:auth_ui/components/text_field_custom.dart';
import 'package:auth_ui/pages/signin/sign_in_page.dart';
import 'package:auth_ui/pages/signup/components/background.dart';
import 'package:auth_ui/themes.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController? nameCtl;
    TextEditingController? mailCtl;
    TextEditingController? passwordCtl;
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(
                  vertical: 20,
                  horizontal: 40,
                ),
                child: GestureDetector(
                  onTap: () {},
                  child: Container(
                    width: 10,
                    height: 20.01,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/icons/arrow_back.png"))),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 40,
                  vertical: 20,
                ),
                child: Text(
                  "Create\nAccount",
                  style: textHeader,
                ),
              ),
              SizedBox(
                height: 60,
              ),
              TextFieldCustom(
                nameCtl: nameCtl,
                bgColor: greyColor2,
                hintText: "Name",
                textStyle: textHint2,
              ),
              TextFieldCustom(
                nameCtl: mailCtl,
                bgColor: greyColor2,
                hintText: "Your Email",
                textStyle: textHint2,
              ),
              TextFieldCustom(
                nameCtl: passwordCtl,
                bgColor: greyColor2,
                hintText: "Password",
                textStyle: textHint2,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  vertical: 0,
                  horizontal: 40,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Sign Up",
                      style: textButton,
                    ),
                    Container(
                      width: 64,
                      height: 64,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: darkColor1,
                      ),
                      child: Image(
                        image: AssetImage("assets/icons/arrow_submit.png"),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: size.height * 0.07,
              ),
              Padding(
                padding: EdgeInsets.all(40),
                child: Align(
                    alignment: Alignment.topRight,
                    child: ButtonCustom(
                        text: "Sign In",
                        width: 78,
                        height: 38,
                        bgColor: blueColor,
                        press: () {
                          Navigator.push(context, 
                            MaterialPageRoute(builder: (context){
                              return SignInPage();
                            })
                          );
                        })),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
