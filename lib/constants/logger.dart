import 'package:logger/logger.dart';

final _logger = Logger(
  printer: PrettyPrinter(
    methodCount: 0,
  ),
);

Logger get logger => _logger;
