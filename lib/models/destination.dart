class Destination {
  final int? id, price;
  final String? name, description, image, category, location;
  final double? rate;
  final List<String>? members;
  final List<dynamic>? facilities;

  Destination(
      {this.id,
      this.price,
      this.name,
      this.category,
      this.description,
      this.image,
      this.location,
      this.facilities,
      this.members,
      this.rate});
}
