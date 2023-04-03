import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:natv_kg/core/themes/colors.dart';

class DownloadFile extends StatefulWidget {
  const DownloadFile({Key? key}) : super(key: key);

  @override
  DownloadFileState createState() => DownloadFileState();
}

class DownloadFileState extends State<DownloadFile> {
  // ignore: avoid_init_to_null
  late File? _image = null;

  final picker = ImagePicker();
  final double recommendedWidth = 720.0;
  final double recommendedHeight = 576.0;
  final double maxFileSize = 3.0; // MB

  Future getImage() async {
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      final file = File(pickedFile.path);
      setState(() {
        _image = file;
      });
    }
  }

  String getFileInfo() {
    if (_image == null) return '';

    final size = _image!.lengthSync() / (1024 * 1024);
    final decodedImage = decodeImage(_image!.readAsBytesSync());

    final width = decodedImage.width.toDouble();
    final height = decodedImage.height.toDouble();
    final aspectRatio = width / height;

    final recommendedAspectRatio = recommendedWidth / recommendedHeight;

    String message = '';
    if (_image == null) {
      message = 'Выберите файл для загрузки.';
    } else if (size > maxFileSize) {
      message = 'Размер файла слишком большой (больше 3 Мб).';
    } else if (aspectRatio != recommendedAspectRatio) {
      message = 'Загруженное изображение меньше рекомендуемого размера.';
    } else if (!['png', 'jpg', 'gif'].contains(_image!.path.split('.').last)) {
      message = 'Неподдерживаемый формат файла.';
    } else if (size > 0) {
      message = 'Размер файла: ${size.toStringAsFixed(2)} Мб.';
    }
    return message;
  }

  Widget _buildPreview() {
    if (_image == null) {
      return const Text('Предпросмотр',
          style: TextStyle(
              color: AppColors.anotherGray,
              fontSize: 25,
              fontWeight: FontWeight.normal));
    }
    return Image.file(_image!);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      // width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 50,
            width: double.infinity,
            child: TextButton(
              style: TextButton.styleFrom(
                backgroundColor: AppColors.red,
              ),
              onPressed: getImage,
              child: const Text(
                'Загрузите графический файл',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                ),
              ),
            ),
          ),
          const SizedBox(height: 20),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                height: 35,
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0),
                      side: const BorderSide(width: 0.5, color: Colors.grey),
                    ),
                    shadowColor: AppColors.border,
                    backgroundColor: Colors.white,
                  ),
                  onPressed: getImage,
                  child: const Text(
                    'Выбрать файл',
                    style: TextStyle(color: AppColors.grayish, fontSize: 14),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0),
                      side: const BorderSide(width: 0.5, color: Colors.grey),
                    ),
                    shadowColor: AppColors.border,
                    backgroundColor: Colors.white,
                  ),
                  onPressed: () {
                    // implement your upload logic here
                  },
                  child: const Text('Загрузить',
                      style: TextStyle(
                          color: AppColors.red,
                          fontWeight: FontWeight.bold,
                          fontSize: 16)),
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Text(getFileInfo()),
          const SizedBox(height: 10),
          Container(
            height: 180,
            decoration: BoxDecoration(
              border: Border.all(color: AppColors.border),
              borderRadius: BorderRadius.circular(3),
            ),
            child: Center(
              child: _buildPreview(),
            ),
          ),
          const SizedBox(height: 10),
          const Text(
              'Рекомендуемый размер файла 720х576 пикс. или соотношение сторон 4:3.\nОграничение по размеру файла 3 Мб. К закачке допустимы графические форматы PNG, JPG, GIF.',
              style: TextStyle(fontSize: 14))
        ],
      ),
    );
  }

  decodeImage(Uint8List readAsBytesSync) {}
}
