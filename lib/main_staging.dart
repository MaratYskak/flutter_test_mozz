import 'package:flutter_test_mozz/src/app/application.dart';

import 'src/app/imports.dart';

void main() async {
  // Initialize screen size
  await UIHelpers.setScreenSize();
  // Set status bar theme
  UIHelpers.statusBarTheme();
  // Prevent landscape mode

  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]).then(
    (_) {
      runApp(
        // Riverpod ProviderScope for state management
        const ProviderScope(
          child: MainApp(
            flavor: AppFlavor.staging,
          ),
        ),
      );
    },
  );
}
