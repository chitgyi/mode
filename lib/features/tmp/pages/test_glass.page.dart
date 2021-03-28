import 'dart:io';
import 'dart:typed_data';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:mode/core/utils/image.utils.dart';
import 'package:mode/features/tmp/widgets/glass_container.dart';
import 'package:path_provider/path_provider.dart';

class TestGlassPage extends StatefulWidget {
  @override
  _TestGlassPageState createState() => _TestGlassPageState();
}

class _TestGlassPageState extends State<TestGlassPage> {
  final GlobalKey _globalKey = GlobalKey();
  final ImageUtils imageUtils = ImageUtils();
  Uint8List? widgetImage;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: widgetToImage,
        backgroundColor: Colors.white,
        child: Icon(
          Icons.camera,
        ),
      ),
      body: Stack(
        children: [
          Container(
            width: size.width,
            height: size.height,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Theme.of(context).primaryColor,
                  Theme.of(context).accentColor,
                  Theme.of(context).accentColor,
                ],
              ),
            ),
          ),
          widgetImage == null
              ? SizedBox.shrink()
              : Positioned(
                  child: Image.memory(widgetImage!),
                  right: 0,
                ),
          RepaintBoundary(
            key: _globalKey,
            child: SizedBox(
              width: size.width * 0.2,
              height: size.width * 0.2,
              child: GlassContainer(
                child: Center(
                  child: Text("GLASS"),
                ),
                borderRadius: BorderRadius.circular(14.0),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void widgetToImage() async {
    final boundary =
        _globalKey.currentContext!.findRenderObject() as RenderRepaintBoundary;
    final image = await boundary.toImage();
    final byteData = await image.toByteData(format: ImageByteFormat.png);
    widgetImage = byteData!.buffer.asUint8List();
    Directory directory = await getTemporaryDirectory();
    imageUtils.writeImageWithNamed(directory.path, widgetImage!);
    setState(() {});
  }
}
