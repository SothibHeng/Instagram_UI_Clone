
import 'dart:convert';

BlogModel BlogModelFromJson(String str) => BlogModel.fromJson(json.decode(str));

String BlogModelToJson(BlogModel data) => json.encode(data.toJson());

class BlogModel {
  List<Blog> blogs;
  int page;
  int pageSize;
  int totalCount;

  BlogModel({
    required this.blogs,
    required this.page,
    required this.pageSize,
    required this.totalCount,
  });

  factory BlogModel.fromJson(Map<String, dynamic> json) => BlogModel(
        blogs: List<Blog>.from(json["blogs"].map((x) => Blog.fromJson(x))),
        page: json["page"],
        pageSize: json["page_size"],
        totalCount: json["total_count"],
      );

  Map<String, dynamic> toJson() => {
        "blogs": List<dynamic>.from(blogs.map((x) => x.toJson())),
        "page": page,
        "page_size": pageSize,
        "total_count": totalCount,
      };
}

class Blog {
  String id;
  String title;
  String content;
  String thumbnail;
  String authorId;
  Author author;
  List<Category> categories;
  int numberOfLikes;
  int numberOfBookmarks;
  DateTime createdAt;
  DateTime updatedAt;

  Blog({
    required this.id,
    required this.title,
    required this.content,
    required this.thumbnail,
    required this.authorId,
    required this.author,
    required this.categories,
    required this.numberOfLikes,
    required this.numberOfBookmarks,
    required this.createdAt,
    required this.updatedAt,
  });

  factory Blog.fromJson(Map<String, dynamic> json) => Blog(
        id: json["id"],
        title: json["title"],
        content: json["content"],
        thumbnail: json["thumbnail"],
        authorId: json["author_id"],
        author: Author.fromJson(json["author"]),
        categories: List<Category>.from(
            json["categories"].map((x) => Category.fromJson(x))),
        numberOfLikes: json["number_of_likes"],
        numberOfBookmarks: json["number_of_bookmarks"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "content": content,
        "thumbnail": thumbnail,
        "author_id": authorId,
        "author": author.toJson(),
        "categories": List<dynamic>.from(categories.map((x) => x.toJson())),
        "number_of_likes": numberOfLikes,
        "number_of_bookmarks": numberOfBookmarks,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
      };
}

class Author {
  String id;
  String username;
  String email;
  String profileUrl;
  String bio;
  DateTime createdAt;
  DateTime updatedAt;

  Author({
    required this.id,
    required this.username,
    required this.email,
    required this.profileUrl,
    required this.bio,
    required this.createdAt,
    required this.updatedAt,
  });

  factory Author.fromJson(Map<String, dynamic> json) => Author(
        id: json["id"],
        username: json["username"],
        email: json["email"],
        profileUrl: json["profileUrl"],
        bio: json["bio"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "username": username,
        "email": email,
        "profileUrl": profileUrl,
        "bio": bio,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
      };
}

class Category {
  String id;
  Name name;

  Category({
    required this.id,
    required this.name,
  });

  factory Category.fromJson(Map<String, dynamic> json) => Category(
        id: json["id"],
        name: nameValues.map[json["name"]]!,
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": nameValues.reverse[name],
      };
}

enum Name { EDUCATION }

final nameValues = EnumValues({"Education": Name.EDUCATION});

class EnumValues<T> {
  Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    reverseMap = map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}
