import 'common.dart';

void main() {
  patrolTest('opens quick settings', ($) async {
    await createApp($);

    // await $.native.openQuickSettings();
    // await $.native.pressHome();
  });
}
