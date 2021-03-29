class Language {
  final int id;
  final String name;
  final String flag;
  final String languageCode;

  Language(this.id, this.name, this.flag, this.languageCode);

  static List<Language> languageList() {
    return <Language>[
       Language(1, '🇵🇰', 'PK', 'ur'),
      Language(2, '🇺🇸', 'US', 'en'),
      Language(3, '🇸🇦', 'SA', 'ar'),
      Language(4, '🇩🇪','GR', 'de')
    ];
  }
}