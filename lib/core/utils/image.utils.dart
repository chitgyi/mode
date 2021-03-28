import 'dart:io';
import 'dart:typed_data';

class ImageUtils {
  Future<String?> writeImageWithNamed(String path, Uint8List image) async {
    try {
      String pngPath = "$path/widgetImage.png";
      File file = File(pngPath);
      file.writeAsBytes(image.toList());
      return pngPath;
    } catch (e) {
      return Future.error(e);
    }
  }

  Future<String?> writeFile(String path, Uint8List byteData) async {
    try {
      final file = File(path);
      file.writeAsBytes(byteData.toList());
      return path;
    } catch (e) {
      return Future.error(e);
    }
  }

  Future<Uint8List> readImage(String path) => File(path).readAsBytes();
}
