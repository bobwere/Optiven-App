import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entities/project_entity.dart';

part 'project_model.freezed.dart';
part 'project_model.g.dart';

@freezed
abstract class ProjectModel with _$ProjectModel {
  factory ProjectModel({
    @JsonKey(ignore: true) String id,
     String name,
     List<String> hash,
     List<String> picture,
     String price,
    String pricerange,
    String financing,
    String location,
    String description,
  }) = _ProjectModel;

  factory ProjectModel.fromDomain(Project project) {
    return ProjectModel(
      id: project.id,
      name: project.name,
      hash: project.hash,
      picture: project.picture,
      price: project.price,
      pricerange: project.pricerange,
      financing: project.financing,
      description: project.description,
      location: project.location,
    );
  }

  factory ProjectModel.fromJson(Map<String, dynamic> json) =>
      _$ProjectModelFromJson(json);

  factory ProjectModel.fromFirestore(DocumentSnapshot doc) {
    return ProjectModel.fromJson(doc.data).copyWith(id: doc.documentID);
  }
}

extension ProjectModelX on ProjectModel {
  Project toDomain() {
    return Project(
      id: id,
      name: name,
      hash: hash,
      picture: picture,
      price: price,
      pricerange: pricerange,
      financing: financing,
      description: description,
      location: location,
    );
  }
}
