class UserEntity {
  UserEntity({
    required this.userName,
    required this.name,
    this.phone,
  });

  final String userName;
  final String name;
  final String? phone;
}
