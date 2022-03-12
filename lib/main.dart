import 'app.dart';
import 'environment.dart';

Future<void> main() async {
  init(EnvironmentSettings(
    apiBaseUrl: "https://api.com.br",
    ambiente: Ambiente.producao,
  ));
}