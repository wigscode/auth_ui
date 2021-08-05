import 'package:auth_ui/components/button_custom.dart';
import 'package:auth_ui/components/text_field_custom.dart';
import 'package:auth_ui/pages/signin/components/background.dart';
import 'package:auth_ui/pages/signup/sign_up_page.dart';
import 'package:auth_ui/themes.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController? userCtl;
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
                  horizontal: 40,
                  vertical: 20,
                ),
                child: GestureDetector(
                  onTap: () {},
                  child: Container(
                    width: 10,
                    height: 20.01,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/icons/arrow_back.png")),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 20,
                  horizontal: 40,
                ),
                child: Text(
                  "Welcome\nBack",
                  style: textHeader,
                ),
              ),
              SizedBox(
                height: 120,
              ),
              TextFieldCustom(
                nameCtl: userCtl,
                hintText: "Your Email",
                bgColor: greyColor1,
                textStyle: textHint1,
              ),
              TextFieldCustom(
                nameCtl: passwordCtl,
                hintText: "Password",
                bgColor: greyColor1,
                textStyle: textHint1,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 0,
                  horizontal: 40,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Sign In",
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
                height: size.height * 0.15,
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 0, horizontal: 40),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ButtonCustom(
                      text: "Sign Up",
                      width: 78,
                      height: 36,
                      bgColor: blueColor,
                      press: (){
                        Navigator.push(context, 
                          MaterialPageRoute(builder: (context){
                            return SignUpPage();
                          })
                        );
                      },
                    ),
                    ButtonCustom(
                      text: "Forgot Password",
                      width: 159,
                      height: 36,
                      bgColor: orangeColor,
                      press: (){},
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

