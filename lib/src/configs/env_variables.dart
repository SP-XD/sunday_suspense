import 'package:flutter_dotenv/flutter_dotenv.dart';

class EnvVariables {
  static final DEFAULTS_URL = DotEnv().env['DEFAULTS_URL'] ?? '';
}
