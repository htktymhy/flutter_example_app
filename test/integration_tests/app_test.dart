import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:flutter_example_app/main.dart'
    as app; // Đảm bảo bạn import đúng ứng dụng của bạn

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  testWidgets('App starts and shows HomeScreen', (WidgetTester tester) async {
    app.main(); // Chạy ứng dụng của bạn
    await tester.pumpAndSettle(); // Đảm bảo UI đã được cập nhật

    // Kiểm tra rằng AppBar của màn hình HomeScreen có đúng tiêu đề
    expect(find.text('Flutter Demo App'), findsOneWidget);

    // Kiểm tra nếu các ListTile có mặt trong màn hình HomeScreen
    expect(find.text('Shared Preferences'), findsOneWidget);
    expect(find.text('Hive'), findsOneWidget);
  });
}
