import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';

part 'project_entity.freezed.dart';

@freezed
abstract class Project with _$Project {
  const factory Project({
    String id,
     String name,
     List<String> hash,
    List<String> picture,
     String pricerange,
    String price,
    String financing,
    String location,
    String description,
  }) = _Project;

  factory Project.empty() => Project(
        id: '',
        name: '',
        hash: [],
        picture: [],
        price: '',
        pricerange: '',
        description: '',
        financing: '',
        location: 'Nairobi',
      );
}
