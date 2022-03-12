import 'app.dart';
import 'environment.dart';

Future<void> main() async {
  init(EnvironmentSettings(
    apiBaseUrl: "https://api-hmlg.com.br",
    ambiente: Ambiente.homologacao,
  ));
}