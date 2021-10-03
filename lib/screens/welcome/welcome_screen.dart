import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          Image.asset('assets/images/welcome_image.png'),
          Text(
            'Welcome to our freedom \nmassaging app',
            textAlign: TextAlign.center,
            style: Theme
                .of(context)
                .textTheme
                .headline5.copyWith(fontWeight: FontWeight.bold),
          ),
          Text(
            'Freedom talk any person of your \nmather language',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Theme.of(context).textTheme.bodyText1.color.withOpacity(0.64),
            ),
          ),
          TextButton(onPressed: (){}, child: Row(
            children: [
              Text(
                'Skip',
                style: Theme.of(context).textTheme.bodyText1.copyWith(
                  color: Theme.of(context).textTheme.bodyText1.color.withOpacity(0.8),
                ),
              ),
              Icon(Icons.arrow_forward_ios,
              size: 16,
              color: Theme.of(context).textTheme.bodyText1.color.withOpacity(0.8),),
            ],
          ))
        ],
      )),
    );
  }
}