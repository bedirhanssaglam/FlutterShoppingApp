import 'package:auto_route/auto_route.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:nectar_ui/core/padding/app_padding.dart';

import '../../../core/helper/text_scale_size.dart';

class LogoutSheet extends StatelessWidget {
  LogoutSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: AppPadding.all(),
          child: Text(
            'Çıkmak istediğinize emin misiniz?',
            style: Theme.of(context).textTheme.headline1!.copyWith(
                  color: Colors.black,
                ),
            textScaleFactor: ScaleSize.textScaleFactor(context),
            textAlign: TextAlign.center,
          ),
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextButton(
              onPressed: () {
                context.popRoute();
              },
              child: Text(
                'Evet',
                style: Theme.of(context).textTheme.headline1!.copyWith(
                      color: Colors.blue,
                    ),
              ),
            ),
            TextButton(
              onPressed: () {
                context.popRoute();
              },
              child: Text(
                'Hayır',
                style: Theme.of(context).textTheme.headline1!.copyWith(
                      color: Colors.blue,
                    ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 50,
        )
      ],
    );
  }
}
