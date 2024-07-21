class ServiceViewModel {
  ServiceViewModel(
    this.id,
    this.name,
    this.details,
    this.description,
    this.stars,
    this.pictureUrl,
  );

  final String id;
  final String name;
  final String details;
  final String description;
  final double stars;
  final String? pictureUrl;
}
