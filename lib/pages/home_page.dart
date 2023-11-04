import 'package:flutter/material.dart';
import 'package:flutter_medical_app/widgets/doctor_item.dart';
import 'package:flutter_medical_app/widgets/specialist_item.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(''),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          bttmNavItem(Icons.home_outlined),
          bttmNavItem(Icons.calendar_month_outlined),
          bttmNavItem(Icons.chat_bubble_outline),
          bttmNavItem(Icons.notifications_none_outlined),
        ],
        type: BottomNavigationBarType.fixed,
        iconSize: 24,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              const SizedBox(height: 12),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Hello,",
                        style: TextStyle(
                          color: Colors.black54,
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(width: 4),
                      Text(
                        "Muhamad Mustafa Azami",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      )
                    ],
                  ),
                  CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.grey,
                    child: CircleAvatar(
                      radius: 28,
                      backgroundImage: AssetImage("assets/pm.jpg"),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 30),
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 16,
                ),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 223, 200, 228),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset(
                      "assets/surgeon.png",
                      width: 92,
                      height: 100,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'How do you feel?',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        const SizedBox(height: 4),
                        const SizedBox(
                          width: 120,
                          child: Text(
                            'Fill out your medical right now',
                            style: TextStyle(
                              color: Colors.black87,
                              fontSize: 12,
                            ),
                          ),
                        ),
                        const SizedBox(height: 10),
                        Container(
                          width: 150,
                          height: 35,
                          padding: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            color: Colors.blueAccent,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: const Center(
                            child: Text(
                              "Get Started",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                              ),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Container(
                padding: const EdgeInsets.only(left: 16),
                height: 64,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(95, 179, 173, 172),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: const Row(
                  children: [
                    Icon(
                      Icons.search,
                      size: 32,
                      color: Colors.black54,
                    ),
                    SizedBox(width: 12),
                    Text(
                      "How can we help you?",
                      style: TextStyle(
                        color: Colors.black54,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              SizedBox(
                height: 60,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: const [
                    SpecialistItem(
                      imagepath: 'assets/clean.png',
                      imageName: 'Dentist',
                    ),
                    SizedBox(width: 8),
                    SpecialistItem(
                      imagepath: 'assets/knife.png',
                      imageName: "Surgeon",
                    ),
                    SizedBox(width: 8),
                    SpecialistItem(
                      imagepath: 'assets/lungs.png',
                      imageName: "Therapy",
                    ),
                    SizedBox(width: 8),
                    SpecialistItem(
                      imagepath: 'assets/hormones.png',
                      imageName: "Physiologist",
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Doctor list',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    'See all',
                    style: TextStyle(
                      color: Colors.black45,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              SizedBox(
                height: 210,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: const [
                    DoctorItem(
                      image: 'assets/1.png',
                      name: 'Nycta Gima',
                      specialist: 'Pediatrician',
                    ),
                    DoctorItem(
                      image: 'assets/2.png',
                      name: 'Indah Kusumaningrum',
                      specialist: 'Odontimologist',
                    ),
                    DoctorItem(
                      image: 'assets/3.png',
                      name: 'Reisa Broto ASmoro',
                      specialist: 'Surgeon',
                    ),
                    DoctorItem(
                      image: 'assets/4.png',
                      name: 'Mesty Ariotedjo',
                      specialist: 'Ophtamologist',
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  BottomNavigationBarItem bttmNavItem(IconData iconData) {
    return BottomNavigationBarItem(
      icon: Icon(
        iconData,
        color: Colors.black54,
      ),
      label: '',
    );
  }
}
