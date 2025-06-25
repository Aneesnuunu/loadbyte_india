import 'package:flutter/material.dart';

import 'about.dart';
import 'footer.dart';
import 'hero_section_widget.dart .dart';
import 'services_section.dart';
import 'contact.dart';
import 'nav_widget.dart';

class LoadByteHome extends StatefulWidget {
  const LoadByteHome({super.key});

  @override
  State<LoadByteHome> createState() => _LoadByteHomeState();
}

class _LoadByteHomeState extends State<LoadByteHome> {
  final ScrollController _scrollController = ScrollController();

  final homeKey = GlobalKey();
  final aboutKey = GlobalKey();
  final servicesKey = GlobalKey();
  final contactKey = GlobalKey();

  void scrollTo(GlobalKey key) {
    Scrollable.ensureVisible(
      key.currentContext!,
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeInOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: LayoutBuilder(
        builder: (context, constraints) {
          final screenWidth = constraints.maxWidth;

          return SingleChildScrollView(
            controller: _scrollController,
            child: Column(
              children: [
                NavBar(
                  onItemSelected: (item) {
                    switch (item) {
                      case "Home":
                        scrollTo(homeKey);
                        break;
                      case "About":
                        scrollTo(aboutKey);
                        break;
                      case "Services":
                        scrollTo(servicesKey);
                        break;
                      case "Contact":
                        scrollTo(contactKey);
                        break;
                    }
                  },
                ),
                Container(key: homeKey), // anchor for Home
                HeroSection(screenWidth: screenWidth),
                Container(key: servicesKey), // anchor for Services
                ServicesSection(screenWidth: screenWidth),
                const SizedBox(height: 80),
                AboutSection(key: aboutKey),
                const SizedBox(height: 20),
                LoadByteContactSection(key: contactKey),
                const Footer(),
              ],
            ),
          );
        },
      ),
    );
  }
}
