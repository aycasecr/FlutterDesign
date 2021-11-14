import 'package:flutter/material.dart';
import 'package:flutter_design/core/constants/image/image_constants.dart';
import 'package:flutter_design/core/init/lang/locale-keys.g.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TryPage extends StatelessWidget {
  const TryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // context.setLocal(LocalizatonLocales.en.rawValue);
        },
      ),
      appBar: AppBar(
        // Text('welcomeUser'.tr(args:['Ayça'])),
        title: Text(LocaleKeys.welcomeUser),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SvgPicture.asset(
              ImageConstants.instance.svgAssets.iconGoogleLogo,
            ),
            Text('Hello',
                style: Theme.of(context).textTheme.headline1?.copyWith(color: Theme.of(context).colorScheme.secondary)),
            SizedBox(
              height: 40,
              child: FittedBox(
                child: Text('Hellos',
                    style: Theme.of(context)
                        .textTheme
                        .headline1
                        ?.copyWith(color: Theme.of(context).colorScheme.secondary)),
              ),
            )
          ],
        ),
      ),
    );
  }
}
