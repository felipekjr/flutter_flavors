import 'package:flutter/material.dart';

class EnvironmentSettings {
  final String apiBaseUrl;
  final Ambiente ambiente;


  EnvironmentSettings({
    required this.apiBaseUrl,
    required this.ambiente,
  });

  static EnvironmentSettings fromJSON(Map<String, dynamic> json) {
    return EnvironmentSettings(
      apiBaseUrl: json['apiBaseUrl'],
      ambiente: json['ambiente'],
    );
  }
}

class Environment extends InheritedWidget {
  final EnvironmentSettings settings;

  const Environment({
    required this.settings,
    required Widget child
  }) : super(child: child);

  static Environment of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType()!;
  }

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) => false;
}

enum Ambiente { dev, homologacao, producao }

const Map<Ambiente, String> AmbienteLabels = {
  Ambiente.dev: 'DEV',
  Ambiente.homologacao: 'HOMOLOG',
  Ambiente.producao: 'PROD'
};