class Space {
  int id;
  String name;
  String city;
  String country;
  int price;
  String imageUrl;
  int rating;
  String address;
  String phone;
  String mapUrl;
  List photos;
  int numberOfKitchens;
  int numberOfBedrooms;
  int numberOfCupboards;

  Space({
    required this.id,
    required this.name,
    required this.city,
    required this.country,
    required this.price,
    required this.imageUrl,
    required this.rating,
    required this.address,
    required this.phone,
    required this.mapUrl,
    required this.photos,
    required this.numberOfKitchens,
    required this.numberOfBedrooms,
    required this.numberOfCupboards,
  });

  factory Space.fromJson(spaceJson) {
    return Space(
        id: spaceJson['id'],
        address: spaceJson['address'],
        city: spaceJson['city'],
        country: spaceJson['country'],
        imageUrl: spaceJson['image_url'],
        mapUrl: spaceJson['map_url'],
        name: spaceJson['name'],
        numberOfBedrooms: spaceJson['number_of_bedrooms'],
        numberOfCupboards: spaceJson['number_of_cupboards'],
        numberOfKitchens: spaceJson['number_of_kitchens'],
        phone: spaceJson['phone'],
        photos: spaceJson['photos'],
        price: spaceJson['price'],
        rating: spaceJson['rating']);
  }
}
