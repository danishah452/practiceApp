class Language {
  final int id;
  final String name;
  final String flag;
  final String languageCode;

  Language(this.id, this.name, this.flag, this.languageCode);

  static List<Language> languageList() {
    return <Language>[
       Language(1, 'π΅π°', 'PK', 'ur'),
      Language(2, 'πΊπΈ', 'US', 'en'),
      Language(3, 'πΈπ¦', 'SA', 'ar'),
      Language(4, 'π©πͺ','GR', 'de')
    ];
  }
}