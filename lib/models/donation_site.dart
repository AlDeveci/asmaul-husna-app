class DonationSite {
  final String name;
  final String url;
  final String description;
  final IconData icon;

  DonationSite({
    required this.name,
    required this.url,
    required this.description,
    required this.icon,
  });

  factory DonationSite.fromJson(Map<String, dynamic> json) {
    return DonationSite(
      name: json['name'],
      url: json['url'],
      description: json['description'],
      icon: _getIcon(json['icon']),
    );
  }

  static IconData _getIcon(String iconName) {
    switch (iconName) {
      case 'favorite':
        return Icons.favorite;
      case 'child_care':
        return Icons.child_care;
      case 'handshake':
        return Icons.handshake;
      default:
        return Icons.volunteer_activism;
    }
  }
}
