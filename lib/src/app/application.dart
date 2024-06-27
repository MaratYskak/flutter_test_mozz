import 'package:flutter_localizations/flutter_localizations.dart';

import '../core/localization/generated/l10n.dart';
import '../core/router/router_provider.dart';
import '../core/theme/theme.dart';
import 'imports.dart';

part 'flavor_builds.dart';

class MainApp extends ConsumerWidget {
  const MainApp({
    required this.flavor,
    super.key,
  });

  final AppFlavor flavor;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(routerProvider);

    return ScreenUtilInit(
      designSize: const Size(390, 844),
      builder: (context, child) => _buildApp(flavor, router),
    );
  }
}
