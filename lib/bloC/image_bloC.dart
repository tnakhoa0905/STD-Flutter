import 'dart:async';
import 'dart:io';
import 'package:image_picker/image_picker.dart';

class ImageBloC {
  StreamController<File> _imageController = StreamController<File>();
  Stream<File> get imagePath => _imageController.stream;
  Future pickImage() async {
    XFile? image = await ImagePicker().pickImage(source: ImageSource.gallery);
    final imageTemporary = File(image!.path);
    if (image == null) return;
    _imageController.sink.add(imageTemporary);
  }

  void dispose() {
    _imageController.close();
  }
}
