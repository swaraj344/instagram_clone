import 'dart:io';

enum ENV { dev, production }

enum DeviceType { ios, android }

class EnvironmentConfig {
  final String apiUrl;
  final ENV env;
  final DeviceType deviceType;

  const EnvironmentConfig._({
    required this.apiUrl,
    required this.env,
    required this.deviceType,
  });

  factory EnvironmentConfig.fromEnv(ENV env) {
    switch (env) {
      case ENV.production:
        return EnvironmentConfig._(
          apiUrl:
              "https://vxq8s6w7ad.execute-api.ap-south-1.amazonaws.com/production/graphql",
          env: env,
          deviceType: Platform.isIOS ? DeviceType.ios : DeviceType.android,
        );
      case ENV.dev:
        return EnvironmentConfig._(
          apiUrl: Platform.isAndroid
              ? "http://10.0.2.2:8000/local/graphql"
              : "http://localhost:8000/local/graphql",
          env: env,
          deviceType: Platform.isIOS ? DeviceType.ios : DeviceType.android,
        );
    }
  }
}

extension Environment on ENV {
  bool get isDev => this == ENV.dev;

  String get env {
    switch (this) {
      case ENV.dev:
        return "DEV";
      case ENV.production:
        return "PRODUCTION";
    }
  }
}

extension Env on String {
  ENV get env {
    switch (this) {
      case "DEV":
        return ENV.dev;
      case "PRODUCTION":
        return ENV.production;
    }
    return ENV.production;
  }
}
