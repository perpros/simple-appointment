class UserEntity {
  UserEntity({
    required this.id,
    required this.userName,
    this.name,
    this.phone,
  });

  final String id;
  final String userName;
  final String? name;
  final String? phone;
}
