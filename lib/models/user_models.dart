import 'package:equatable/equatable.dart';

class UserModels extends Equatable {
  final String name;
  final int id;

  const UserModels({required this.name, required this.id});

  @override
  List<Object?> get props => [name, id];
}
