class ServiceViewModel {
  const ServiceViewModel(
    this.id,
    this.name,
    this.details,
    this.description,
    this.stars,
    this.pictureUrl,
  );

  final int id;
  final String name;
  final String details;
  final String description;
  final double stars;
  final String? pictureUrl;
}
