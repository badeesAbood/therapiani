


abstract class BaseEntity<T> {
  T fromJson(Map<String, dynamic> json);
  Map<String, dynamic> toJson();
}