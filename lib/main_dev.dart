import 'app.dart';
import 'environment.dart';

Future<void> main() async {
  init(EnvironmentSettings(
    apiBaseUrl: "https://api-dev.com.br",
    ambiente: Ambiente.dev,
  ));
}