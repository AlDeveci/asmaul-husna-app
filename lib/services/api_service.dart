import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/donation_site.dart';

class ApiService {
  final String _donationSitesUrl = "https://raw.githubusercontent.com/dein-username/dein-repo/main/donations.json";

  Future<List<DonationSite>> fetchDonationSites() async {
    final response = await http.get(Uri.parse(_donationSitesUrl));
    if (response.statusCode == 200) {
      List<dynamic> jsonData = json.decode(response.body);
      return jsonData.map((data) => DonationSite.fromJson(data)).toList();
    } else {
      throw "Fehler beim Laden der Daten";
    }
  }
}
