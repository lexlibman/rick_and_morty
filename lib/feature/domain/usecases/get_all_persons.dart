import 'package:dartz/dartz.dart';
import 'package:rick_and_morty/feature/domain/repositories/person_repository.dart';

import '../../../core/error/failure.dart';
import '../entities/person_entity.dart';

class GetAllPersons {
  final PersonRepository personRepository;

  GetAllPersons(this.personRepository);

  Future<Either<Failure, List<PersonEntity>>> call(int page) async {
    return await personRepository.getAllPersons(page);
  }
}
