class Sample {
  final String? nama;
  final int? age;
  final List<String>? hoby;
  final Github? github;
  final List<Article>? articles;

  Sample({
    this.nama,
    this.age,
    this.hoby,
    this.github,
    this.articles,
  });

  factory Sample.fromJson(Map<String, dynamic> json) {
    return Sample(
      nama: json["nama"] ?? '',
      age: json["age"] ?? 0,
      hoby: List<String>.from(json["hoby"] ?? []),
      github: Github.fromJso(json["github"]),
      articles: List<Article>.from(
          json["articles"].map((article) => Article.fromJson(article)) ?? []),
    );
  }

  @override
  String toString() => 'sample(nama: $nama, age: $age, hoby: $hoby)';
}

class Github {
  final String? username;
  final int? repositories;
  final bool? isGDE;

  Github({
    required this.username,
    required this.repositories,
    required this.isGDE,
  });

  factory Github.fromJso(Map<String, dynamic> json) {
    return Github(
      username: json["username"],
      repositories: json["repositories"],
      isGDE: json["isGDE"],
    );
  }

  @override
  String toString() =>
      'Github(username: $username, repositories: $repositories, isGDE: $isGDE)';
}

class Article {
  final int? id;
  final String? title;
  final String? subtitle;

  Article({
    this.id,
    this.title,
    this.subtitle,
  });

  factory Article.fromJson(Map<String, dynamic> json) {
    return Article(
      id: json["id"] ?? 0,
      title: json["title"] ?? '',
      subtitle: json["subtitle"] ?? '',
    );
  }

  @override
  String toString() => 'Article(id: $id, title: $title, subtitle: $subtitle)';
}
