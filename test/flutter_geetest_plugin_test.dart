import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_geetest_plugin_backendjson/flutter_geetest_plugin_backendjson.dart';

void main() {
  const MethodChannel channel =
      MethodChannel('flutter_geetest_plugin_beckendjson');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await FlutterGeetestPlugin.platformVersion, '42');
  });
}
