import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('ADAS Hello World')),
        body: Center(
          child: ElevatedButton(
            onPressed: () async {
              // 模拟 ADAS 启动前的权限检查
              var status = await Permission.camera.request();
              if (status.isGranted) {
                print("摄像头已就绪，可以开始 YOLO 检测");
              }
            },
            child: const Text('启动辅助驾驶系统'),
          ),
        ),
      ),
    );
  }
}
