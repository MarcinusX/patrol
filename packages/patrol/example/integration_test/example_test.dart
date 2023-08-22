import 'package:flutter/material.dart';

import 'common.dart';

void main() {
  patrolTest(
    'counter state is the same after going to Home and switching apps',
    ($) async {
      await createApp($);

      await $(FloatingActionButton).tap();
      expect($(#counterText).text, '1');

      await $(#textField).enterText('Hello, Flutter!');
      expect($('Hello, Flutter!'), findsOneWidget);

      // await $.native.pressHome();
      // await $.native.openApp();

      expect($(#counterText).text, '1');
      await $(FloatingActionButton).tap();

      expect($(#counterText).text, '2');
      expect($('Hello, Flutter!'), findsOneWidget);
      await $(FloatingActionButton).tap();
      await $(FloatingActionButton).tap();
      await $(FloatingActionButton).tap();
      expect($(#counterText).text, '5');
    },
  );
}
