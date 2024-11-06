import 'dart:async';
import 'dart:isolate';

import 'package:midnight_suspense/bootstrap.dart';

class IsolateCommand {
  final String operation;
  final dynamic params;

  IsolateCommand({
    required this.operation,
    required this.params,
  });
}

abstract class IsolateService {
  late final SendPort _commands;
  late final ReceivePort _responses;
  late final Isolate _isolate;
  final Map<int, Completer<Object?>> _activeRequests = {};
  int _idCounter = 0;
  bool _closed = false;

  Future<T> addJob<T>({
    required String operation,
    dynamic params,
  }) async {
    if (_closed) throw StateError('Closed');
    final completer = Completer<T>.sync();
    final id = _idCounter++;
    _activeRequests[id] = completer;

    final command = IsolateCommand(
      operation: operation,
      params: params,
    );

    print('_activeRequests $_activeRequests');

    _commands.send((id, command));
    return await completer.future;
  }

  Future<void> spawnIsolate() async {
    // Create a receive port and add its initial message handler
    final initPort = RawReceivePort();
    final connection = Completer<(ReceivePort, SendPort)>.sync();
    initPort.handler = (initialMessage) {
      final commandPort = initialMessage as SendPort;
      connection.complete((
        ReceivePort.fromRawReceivePort(initPort),
        commandPort,
      ));
    };

    // Spawn the isolate.
    try {
      _isolate = await Isolate.spawn(_startRemoteIsolate, (initPort.sendPort));
    } on Object {
      initPort.close();
      rethrow;
    }

    final (ReceivePort receivePort, SendPort sendPort) = await connection.future;

    logger.i('Isolate spawned');

    _commands = sendPort;
    _responses = receivePort;
    _responses.listen(_handleResponsesFromIsolate);
  }

  void _handleResponsesFromIsolate(dynamic message) {
    print('handleResponsesFromIsolate called');
    final (int id, Object? response) = message as (int, Object?);
    final completer = _activeRequests.remove(id)!;

    if (response is RemoteError) {
      completer.completeError(response);
    } else {
      completer.complete(response);
    }

    if (_closed && _activeRequests.isEmpty) _responses.close();
  }

  void handleCommandsToIsolate(
    ReceivePort receivePort,
    SendPort sendPort,
  ) {
    receivePort.listen((message) async {
      if (message == 'shutdown') {
        receivePort.close();
        return;
      }
      //   final (int id, dynamic command) = message as (int, dynamic);

      //   if (command is IsolateCommand) {
      //     try {
      //       final result = await command.execute();
      //       sendPort.send((id, result));
      //     } catch (e, st) {
      //       sendPort.send((id, RemoteError(e.toString(), st.toString())));
      //     }
      //   }

      //   final (int id, String jsonText, dynamic Function(dynamic params) callback) =
      //       message as (int, String, WorkerCallback);
      //   try {
      //     final command = jsonDecode(jsonText);
      //     final String callbackName = command['callback'] as String;
      //     final params = command['params'];
      //     logger.i("Inside isolate callbackName: $callbackName");
      //     logger.i("Inside isolate params: $params");

      //     // logger.i("Inside isolate registeredCallbacks: $_registeredCallbacks");
      //     // final resultFromCallback = _registeredCallbacks[callbackName];
      //     // if (resultFromCallback == null) {
      //     //   throw Exception('Callback "$callbackName" not found');
      //     // }

      //*     final result = callback(params);
      //*     sendPort.send((id, result));
      //*   } catch (e, st) {
      //*     sendPort.send((id, RemoteError(e.toString(), st.toString())));
      //*   }
    });
  }

  void _startRemoteIsolate(SendPort sendPort) {
    final receivePort = ReceivePort();
    sendPort.send(receivePort.sendPort);
    handleCommandsToIsolate(receivePort, sendPort);
  }

  void close() {
    if (!_closed) {
      _closed = true;
      _commands.send('shutdown');
      if (_activeRequests.isEmpty) _responses.close();
      _isolate.kill();
      print('--- port closed --- ');
    }
  }
}
