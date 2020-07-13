class EventModel {
    EventModel({
        this.location,
        this.eventName,
        this.rating,
        this.favourite,
        this.description,
        this.image,
        this.duration
    });

    final String location;
    final String eventName;
    final double rating;
    final int favourite;
    final String description;
    final String image;
    final String duration;

    // factory EventModel.fromJson(Map<String, dynamic> json) => EventModel(
    //     location: json["location"] == null ? null : json["location"],
    //     eventName: json["eventName"] == null ? null : json["eventName"],
    //     rating: json["rating"] == null ? null : json["rating"].toDouble(),
    //     favourite: json["favourite"] == null ? null : json["favourite"],
    //     description: json["description"] == null ? null : json["description"],
    //     image: json["image"] == null ? null : json["image"],
    // );

    // Map<String, dynamic> toJson() => {
    //     "location": location == null ? null : location,
    //     "eventName": eventName == null ? null : eventName,
    //     "rating": rating == null ? null : rating,
    //     "favourite": favourite == null ? null : favourite,
    //     "description": description == null ? null : description,
    //     "image": image == null ? null : image,
    // };
}
