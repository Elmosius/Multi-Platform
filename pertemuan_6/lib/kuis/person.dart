class Person {
  final int? id; // id tetap nullable karena mungkin tidak selalu tersedia
  final String? firstName;
  final String? lastName;
  final String? email;
  final String? name;
  final String? job;
  final String? createdAt;

  Person({
    this.id,
    this.firstName,
    this.lastName,
    this.email,
    this.name,
    this.job,
    this.createdAt,
  });

  factory Person.fromJson(Map<String, dynamic> json) {
    return Person(
      id: (json['id'] is String)
          ? int.tryParse(json['id'])
          : json['id'], // Konversi id jika berbentuk String
      firstName: json['first_name'],
      lastName: json['last_name'],
      email: json['email'],
      name: json['name'],
      job: json['job'],
      createdAt: json['createdAt'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'first_name': firstName,
      'last_name': lastName,
      'email': email,
      'name': name,
      'job': job,
    };
  }
}
