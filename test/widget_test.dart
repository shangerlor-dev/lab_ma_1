
import 'package:flutter_test/flutter_test.dart';
import 'package:lab_ma_1/activity5_theme_components.dart';

void main() {
  testWidgets('Settings app displays preferences', (WidgetTester tester) async {
    await tester.pumpWidget(const SettingsApp());

    expect(find.text('Settings'), findsOneWidget);
    expect(find.text('Preferences'), findsOneWidget);
    expect(find.text('Dark Mode'), findsOneWidget);
    expect(find.text('Notifications'), findsOneWidget);
    expect(find.text('Location Services'), findsOneWidget);
    expect(find.text('Save Settings'), findsOneWidget);
  });
}
