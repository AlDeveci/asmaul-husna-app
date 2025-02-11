class AsmaulHusna {
  final int id;
  final String nameArabic;
  final String nameTranscription;
  final String meaning;
  final String audioFile;
  final String calligraphyImage;

  AsmaulHusna({
    required this.id,
    required this.nameArabic,
    required this.nameTranscription,
    required this.meaning,
    required this.audioFile,
    required this.calligraphyImage,
  });

  factory AsmaulHusna.fromJson(Map<String, dynamic> json) {
    return AsmaulHusna(
      id: json['id'],
      nameArabic: json['name_arabic'],
      nameTranscription: json['name_transcription'],
      meaning: json['meaning'],
      audioFile: json['audio_file'],
      calligraphyImage: json['calligraphy_image'],
    );
  }
}
