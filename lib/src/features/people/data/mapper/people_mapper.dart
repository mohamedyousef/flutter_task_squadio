import 'package:collection/collection.dart';
import 'package:ibtikar_task/src/features/people/data/entities/people_entities.dart';
import 'package:ibtikar_task/src/features/people/domain/models/models.dart';

class PeopleMapper {
  const PeopleMapper();

  List<PersonModel>? transformToPeopleListList(PeopleListEntity? data) {
    return data?.people.map(transformToPersonModel).whereNotNull().toList();
  }

  PersonModel? transformToPersonModel(PersonEntity personEntity) {
    final name = personEntity.name;
    final image = personEntity.image;
    final department = personEntity.department;
    final id = personEntity.id;
    if (id == null || name == null || image == null || department == null) return null;
    return PersonModel(name: name, id: id, profileImage: ImageModel(path: image), department: department);
  }

  ImageModel? transformToImageModel(ImageEntity imageEntity) {
    final path = imageEntity.path;
    if (path == null) return null;
    return ImageModel(path: path);
  }

  List<ImageModel>? transformToImages(ImagesEntity? data) =>
      data?.images.map(transformToImageModel).whereNotNull().toList();
}
