enum Language {
  es,
  en,
  none;

  static Language fromString(String? languageCode) {
    if (languageCode == null) return Language.none;
    switch (languageCode.toLowerCase()) {
      case 'es':
        return Language.es;
      case 'en':
        return Language.en;
      default:
        return Language.none;
    }
  }

  String getFlagAsset() {
    switch (this) {
      case Language.es:
        return 'assets/icons/arg_flag.svg';
      case Language.en:
      default:
        return 'assets/icons/us_flag.svg';
    }
  }

  String toText() {
    switch (this) {
      case Language.es:
        return 'Español';
      case Language.en:
        return 'English';
      case Language.none:
        return '';
    }
  }

  @override
  String toString() {
    switch (this) {
      case Language.es:
        return 'es';
      case Language.en:
        return 'en';
      default:
        return '';
    }
  }
}
