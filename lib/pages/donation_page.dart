import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../models/donation_site.dart';
import '../services/api_service.dart';

class DonationPage extends StatefulWidget {
  @override
  _DonationPageState createState() => _DonationPageState();
}

class _DonationPageState extends State<DonationPage> {
  final ApiService _apiService = ApiService();
  List<DonationSite> _sites = [];

  @override
  void initState() {
    super.initState();
    _loadDonationSites();
  }

  Future<void> _loadDonationSites() async {
    try {
      final sites = await _apiService.fetchDonationSites();
      setState(() => _sites = sites);
    } catch (e) {
      print("Fehler: $e");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Spenden & Helfen")),
      body: _sites.isEmpty
          ? Center(child: CircularProgressIndicator())
          : ListView.builder(
              itemCount: _sites.length,
              itemBuilder: (context, index) => _DonationCard(site: _sites[index]),
            ),
    );
  }
}

class _DonationCard extends StatelessWidget {
  final DonationSite site;

  const _DonationCard({required this.site});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(8),
      child: ListTile(
        leading: Icon(site.icon, color: Colors.green[700]),
        title: Text(site.name),
        subtitle: Text(site.description),
        trailing: Icon(Icons.arrow_forward),
        onTap: () => _launchURL(site.url),
      ),
    );
  }

  Future<void> _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw "Konnte $url nicht öffnen";
    }
  }
}
