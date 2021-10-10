import 'package:chat/screens/signinOrSiginUp/signin_or_signup.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          Spacer(flex: 2,),
          Image.asset('assets/images/welcome_image.png'),
          Spacer(flex: 3,),
          Text(
            'Welcome to our freedom \nmassaging app',
            textAlign: TextAlign.center,
            style: Theme
                .of(context)
                .textTheme
                .headline5.copyWith(fontWeight: FontWeight.bold),
          ),
          Spacer(),
          Text(
            'Freedom talk any person of your \nmather language',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Theme.of(context).textTheme.bodyText1.color.withOpacity(0.64),
            ),
          ),
          Spacer(flex: 3,),
          //used to fit the text and the icon with the text button
          FittedBox(
            child: TextButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder:(context) => SignInOrSignUp()),);
            }, child: Row(
              children: [
                Text(
                  'Skip',
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.bodyText1.copyWith(
                    color: Theme.of(context).textTheme.bodyText1.color.withOpacity(0.8),
                  ),
                ),
                SizedBox(width: kDefaultPadding/4,),
                Icon(Icons.arrow_forward_ios,
                size: 16,
                color: Theme.of(context).textTheme.bodyText1.color.withOpacity(0.8),),
              ],
            )),
          )
        ],
      )),
    );
  }
}
