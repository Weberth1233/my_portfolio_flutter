import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show ByteData, rootBundle;
// ignore: avoid_web_libraries_in_flutter
// import 'dart:html' as html;

void scrollSectionSimple(GlobalKey key) {
  Scrollable.ensureVisible(key.currentContext!,
      duration: const Duration(seconds: 1), curve: Curves.easeInCubic);
}

// Future<void> downloadCV() async {
//   try {
//     // Carregar o arquivo PDF dos ativos
//     final ByteData data = await rootBundle.load('assets/cv.pdf');
//     final List<int> bytes = data.buffer.asUint8List();

//     // Criar um Blob e iniciar o download
//     final blob = html.Blob([bytes], 'application/pdf');
//     final url = html.Url.createObjectUrlFromBlob(blob);
//     html.AnchorElement(href: url)
//       ..setAttribute('download', 'cv.pdf')
//       ..click();
//     html.Url.revokeObjectUrl(url);
//   } catch (e) {
//     print('Erro ao baixar o arquivo: $e');
//   }
// }
