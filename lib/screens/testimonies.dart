import 'package:flutter/material.dart';

class TestimonialPage extends StatefulWidget {
  const TestimonialPage({super.key});

  @override
  State<TestimonialPage> createState() => _TestimonialPageState();
}

class _TestimonialPageState extends State<TestimonialPage> {
  final List<Testimonial> testimonials = [
    const Testimonial(
        name: 'John Doe',
        age: 30,
        testimonial:
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.'),
    const Testimonial(
        name: 'Jane Doe',
        age: 25,
        testimonial:
            'Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.'),
    const Testimonial(
        name: 'Michael Smith',
        age: 42,
        testimonial:
            'Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo[200], // question page color.
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          'UBUHAMYA',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30,
          ),
        ),
      ),

      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 15.0, left: 15.0),
            child: SizedBox(
              height: 80,
              child: Text(
                'Hano Kuri iyi page\nHariho ubuhamya bwa bamwe murugano \n ',
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: SizedBox(
              height: 600,
              child: Row(
                children: [
                  for (final testimonial in testimonials)
                    TestimonialCard(testimonial: testimonial),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CustomCard extends StatelessWidget {
  final Color backgroundColor;
  final Widget child;

  const CustomCard(
      {super.key, required this.backgroundColor, required this.child});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: backgroundColor,
      child: child,
    );
  }
}

class Testimonial {
  final String name;
  final int age;
  final String testimonial;

  const Testimonial(
      {required this.name, required this.age, required this.testimonial});
}

class TestimonialCard extends StatelessWidget {
  final Testimonial testimonial;

  const TestimonialCard({super.key, required this.testimonial});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 380,
      child: CustomCard(
        backgroundColor: Colors.indigoAccent,
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                testimonial.name,
                style: const TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Color.fromRGBO(197, 202, 233, 1),
                ),
              ),
              const SizedBox(
                height: 5.0,
              ),
              Text(
                '${testimonial.age} years old',
                style: const TextStyle(
                  fontSize: 16.0,
                  color: Color.fromRGBO(197, 202, 233, 1),
                ),
              ),
              const SizedBox(
                height: 15.0,
              ),
              Text(
                testimonial.testimonial,
                style: const TextStyle(
                  fontSize: 18.0,
                  color: Color.fromRGBO(197, 202, 233, 1),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
