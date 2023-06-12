import 'bachelor.dart';
import 'package:faker/faker.dart';

List<Bachelor> generateFakeBachelors() {
  final List<String> maleFirstNames = ['John', 'Robert', 'Michael', 'William', 'David', 'Joseph'];
  final List<String> femaleFirstNames = ['Mary', 'Jennifer', 'Linda', 'Patricia', 'Elizabeth', 'Susan'];
  final List<String> lastNames = ['Smith', 'Johnson', 'Brown', 'Taylor', 'Davis', 'Wilson'];
  final List<String> avatars = ['man-1.png', 'woman-1.png', 'man-2.png', 'woman-2.png'];

  final faker = Faker();

  List<Bachelor> bachelors = [];

  for (int i = 0; i < 12; i++) {
    String firstname = '';
    Gender gender = Gender.male;

    if (i % 2 == 0) {
      firstname = maleFirstNames[i ~/ 2];
      gender = Gender.male;
    } else {
      firstname = femaleFirstNames[i ~/ 2];
      gender = Gender.female;
    }

    String lastname = faker.randomGenerator.element(lastNames);
    String avatar = faker.randomGenerator.element(avatars);
    List<Gender> searchFor = [gender == Gender.male ? Gender.female : Gender.male];

    Bachelor bachelor = Bachelor(
      firstname: firstname,
      lastname: lastname,
      gender: gender,
      avatar: avatar,
      searchFor: searchFor,
    );

    bachelors.add(bachelor);
  }

  return bachelors;
}