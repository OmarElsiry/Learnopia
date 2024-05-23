import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter_blue_plus/flutter_blue_plus.dart';

final FlutterBluePlus flutterBlue = FlutterBluePlus();
BluetoothDevice? device;
BluetoothCharacteristic? characteristic;

Future<void> connectToDevice() async {
  print('Attempting to connect to device...'); // Added log
  final devices = FlutterBluePlus.connectedDevices;
  if (devices.isNotEmpty) {
    device = devices.first;
    final services = await device!.discoverServices();
    for (final service in services) {
      String? serviceUuid = service.uuid.toString();
      print('Service UUID: $serviceUuid'); // Added log
      final characteristics = service.characteristics;
      for (final char in characteristics) {
        String? characteristicUuid = char.uuid.toString();
        print('Characteristic UUID: $characteristicUuid'); // Added log
        characteristic = char;
        break;
      }
      break;
    }
  } else {
    print("No devices connected."); // Added log
  }
}

Future<void> sendMessageToPC(String message) async {
  if (device != null && characteristic != null) {
    await characteristic!.write(utf8.encode(message));
  } else {
    if (kDebugMode) {
      print("Device or characteristic not found.");
    }
  }
}
