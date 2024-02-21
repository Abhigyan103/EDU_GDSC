import 'package:flutter/material.dart';
import 'package:quality_education_gdsc/src/location.dart';
import 'package:quality_education_gdsc/src/location_list_item.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    List<Location> locations = [
      Location(
        name: 'Accessible Education',
        place:
            'Ensure that education is accessible to all individuals, regardless of their socio-economic background, gender, ethnicity, or physical abilities. Implement policies and initiatives that remove barriers to education, such as providing financial assistance, transportation, and inclusive facilities.',
        imageUrl: 'EDU2.jpg',
      ),
      Location(
        name: 'Gender Equality',
        place:
            'Promote gender equality by eliminating discriminatory practices in education. Encourage equal opportunities for both genders in terms of enrollment, retention, and participation in all levels of education. Address stereotypes and biases that may hinder the educational progress of certain genders.',
        imageUrl: 'EDU3.jpg',
      ),
      Location(
        name: 'Inclusive Curriculum: ',
        place:
            'Develop inclusive curricula that reflect diverse perspectives, cultures, and experiences. Incorporate content that fosters tolerance, understanding, and appreciation for diversity. This helps create an educational environment that respects and values the contributions of all individuals.',
        imageUrl: 'EDU1.jpg',
      ),
      Location(
        name: 'Teacher Training and Diversity',
        place:
            'Invest in teacher training programs that emphasize cultural competence, diversity awareness, and inclusive teaching practices. Encourage the recruitment of a diverse teaching workforce that reflects the backgrounds and experiences of the student population.',
        imageUrl: 'EDU4.jpg',
      ),
      Location(
        name: 'Lifelong Opportunities',
        place:
            'Establish mechanisms for lifelong learning opportunities beyond formal education. Support adult education programs, vocational training, and skill development initiatives to ensure that individuals can continually update their knowledge and skills throughout their lives, adapting to changing economic and technological landscapes.',
        imageUrl: 'EDU5.jpg',
      ),
    ];

    return PageView.builder(
      scrollDirection: Axis.vertical,
      itemBuilder: (context, index) {
        return LocationListItem(
          imageUrl: locations[index].imageUrl,
          name: locations[index].name,
          country: locations[index].place,
        );
      },
      itemCount: locations.length,
    );
    // return SingleChildScrollView(
    //   child: Column(
    //     children: locations.map((location) {
    //       return LocationListItem(
    //         imageUrl: location.imageUrl,
    //         name: location.name,
    //         country: location.place,
    //       );
    //     }).toList(),
    //   ),
    // );
  }
}
