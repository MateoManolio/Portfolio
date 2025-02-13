// ignore: avoid_web_libraries_in_flutter
import 'dart:html' as html;

import 'package:flutter/services.dart';

import '../../core/contracts/data_state.dart';
import '../../core/enums/language_enum.dart';
import '../../domain/repository/i_cv_repository.dart';

class CVRepository implements ICVRepository {
  @override
  Future<DataState<bool>> downloadCV(String? language) async {
    try {
      final Language selectedLang = Language.fromString(language);
      final String fileSuffix = _getFileSuffix(selectedLang);
      final String assetPath = 'documents/mateo_manolio_cv$fileSuffix.pdf';

      final ByteData data = await rootBundle.load(assetPath);
      final Uint8List bytes = data.buffer.asUint8List();

      final html.Blob blob = html.Blob([bytes], 'application/pdf');
      final String url = html.Url.createObjectUrlFromBlob(blob);

      html.AnchorElement(href: url)
        ..setAttribute('download', 'Mateo Manolio CV.pdf')
        ..click();

      html.Url.revokeObjectUrl(url);

      return DataSuccess<bool>(data: true);
    } catch (e) {
      return DataFailure<bool>(error: Exception('Error downloading CV: $e'));
    }
  }

  String _getFileSuffix(Language language) {
    switch (language) {
      case Language.es:
        return '_es';
      case Language.en:
        return '_en';
      default:
        return '';
    }
  }
}
