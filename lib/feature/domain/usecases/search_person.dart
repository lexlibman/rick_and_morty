import 'package:dartz/dartz.dart';
import 'package:rick_and_morty/feature/domain/repositories/person_repository.dart';

import '../../../core/error/failure.dart';
import '../entities/person_entity.dart';

class SearchPerson {
  final PersonRepository personRepository;

  SearchPerson(this.personRepository);

  Future<Either<Failure, List<PersonEntity>>> call(String query) async {
    return await personRepository.searchPerson(query);
  }
}
