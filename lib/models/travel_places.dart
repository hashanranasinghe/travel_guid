
enum Complexity {
  simple,
  challenging,
  hard
}
class TravelPlaces {

  final String id;
  final String category;
  final String name;
  final String imageUrl;
  final String description;
  final Complexity complexity;

 const TravelPlaces({
    required this.id,
    required this.category,
    required this.name,
    required this.imageUrl,
    required this.description,
    required this.complexity
  });


}