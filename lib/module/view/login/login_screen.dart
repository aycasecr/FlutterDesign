import 'package:flutter/material.dart';
import 'package:flutter_design/core/constants/image/image_constants.dart';
import 'package:flutter_design/module/widgets/login_form_field_widget.dart';
import 'package:flutter_design/module/widgets/text_widget.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isChecked = false;
  Color getColor(Set<MaterialState> states) {
    const Set<MaterialState> interactiveStates = <MaterialState>{
      MaterialState.pressed,
      MaterialState.hovered,
      MaterialState.focused,
    };
    if (states.any(interactiveStates.contains)) {
      return Theme.of(context).colorScheme.onSurface;
    }
    return Theme.of(context).colorScheme.onSurface;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(left: 30, right: 30),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Spacer(flex: 8),
              Expanded(flex: 5, child: loginText()),
              Spacer(flex: 2),
              Expanded(flex: 5, child: loginWelcomeText(context)),
              Spacer(flex: 5),
              Expanded(flex: 13, child: LoginFormField()),
              Spacer(flex: 1),
              Expanded(flex: 2, child: rememberMeAndForgetPassword(context)),
              Spacer(flex: 2),
              Expanded(flex: 5, child: loginButton(context)),
              Spacer(flex: 1),
              Expanded(flex: 2, child: chooseSelectionText(context)),
              Spacer(flex: 1),
              Expanded(flex: 5, child: googleLoginButton(context)),
              Spacer(flex: 1),
              Expanded(flex: 2, child: registrationOption(context)),
              Spacer(flex: 6),
            ],
          ),
        ),
      ),
    );
  }

  Row registrationOption(BuildContext context) {
    //Text(LocaleKeys.welcomeUser.tr()),
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomTextWidget(text: 'Bir hesabın yok mu?', styles: Theme.of(context).textTheme.caption),
        SizedBox(width: 10),
        InkWell(
            child: CustomTextWidget(
                text: 'Kayıt Ol',
                styles: Theme.of(context).textTheme.subtitle1?.copyWith(color: Theme.of(context).colorScheme.primary)))
      ],
    );
  }

  Container googleLoginButton(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () {},
        style: ButtonStyle(
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.0))),
            backgroundColor: MaterialStateProperty.all<Color>(Theme.of(context).colorScheme.surface)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(ImageConstants.instance.svgAssets.iconGoogleLogo),
            SizedBox(width: 10),
            CustomTextWidget(
                text: 'Google ile Giris Yap',
                styles: Theme.of(context).textTheme.subtitle1?.copyWith(color: Theme.of(context).colorScheme.primary))
          ],
        ),
      ),
    );
  }

  Row chooseSelectionText(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [CustomTextWidget(text: 'YA DA', styles: Theme.of(context).textTheme.caption)],
    );
  }

  Container loginButton(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () {},
        style: ButtonStyle(
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.0))),
            backgroundColor: MaterialStateProperty.all<Color>(Theme.of(context).colorScheme.secondaryVariant)),
        child: CustomTextWidget(text: 'Giris Yap'),
      ),
    );
  }

  Row rememberMeAndForgetPassword(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Checkbox(
              checkColor: Colors.white,
              fillColor: MaterialStateProperty.resolveWith(getColor),
              value: isChecked,
              onChanged: (bool? value) {
                setState(() {
                  isChecked = value!;
                });
              },
            ),
            CustomTextWidget(
                text: 'Beni Hatırla',
                styles: Theme.of(context).textTheme.subtitle1?.copyWith(color: Theme.of(context).colorScheme.primary)),
          ],
        ),
        CustomTextWidget(text: 'Sifremi Unuttum?', styles: Theme.of(context).textTheme.headline6)
      ],
    );
  }

  CustomTextWidget loginWelcomeText(BuildContext context) {
    return CustomTextWidget(
        text: 'Tekrar hosgeldin, seni çok özlemistik!',
        styles: Theme.of(context)
            .textTheme
            .headline5
            ?.copyWith(color: Theme.of(context).colorScheme.secondary, fontSize: 20));
  }
}

class loginText extends StatelessWidget {
  const loginText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomTextWidget(
        text: 'Giris Yapalım', styles: Theme.of(context).textTheme.headline4?.copyWith(fontWeight: FontWeight.bold));
  }
}
