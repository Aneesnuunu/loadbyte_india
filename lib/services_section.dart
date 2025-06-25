import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ServicesSection extends StatelessWidget {
  final double screenWidth;

  const ServicesSection({super.key, required this.screenWidth});

  @override
  Widget build(BuildContext context) {
    final isMobile = screenWidth < 800;

    final services = [
      {
        'icon': Icons.trending_up,
        'title': 'Performance\nMarketing',
        'desc': 'Maximize ROI with data-driven ad campaigns & conversion optimization.',
      },
      {
        'icon': Icons.people_alt_rounded,
        'title': 'Social Media\nMarketing',
        'desc': 'Grow engagement with strategy, content creation, and influencer partnerships.',
      },
      {
        'icon': Icons.search_rounded,
        'title': 'Search Engine\nOptimization',
        'desc': 'Boost visibility and traffic through advanced SEO and content.',
      },
      {
        'icon': Icons.color_lens_rounded,
        'title': 'Branding &\nCreative',
        'desc': 'Craft memorable brands with stunning design and storytelling.',
      },
      {
        'icon': Icons.web_rounded,
        'title': 'Web Design &\nDevelopment',
        'desc': 'Modern, responsive websites and landing pages that convert.',
      },
      {
        'icon': Icons.star_outline_rounded,
        'title': 'Online Reputation\nManagement',
        'desc': 'Protect and enhance your brand image across the digital landscape.',
      },
    ];

    // Calculate width for each card
    double getItemWidth() {
      if (isMobile) {
        // Subtract total horizontal padding (40) and spacing (12)
        return (screenWidth - 40 - 12) / 2;
      } else {
        return 180;
      }
    }

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          Text(
            "Our Services",
            style: GoogleFonts.poppins(
              fontSize: 28,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 30),
          Wrap(
            alignment: WrapAlignment.center,
            spacing: 12,
            runSpacing: 24,
            children: [
              for (final s in services)
                ServiceItem(
                  icon: s['icon'] as IconData,
                  title: s['title'] as String,
                  description: s['desc'] as String,
                  width: getItemWidth(),
                ),
            ],
          ),
        ],
      ),
    );
  }
}

class ServiceItem extends StatelessWidget {
  final IconData icon;
  final String title;
  final String description;
  final double width;

  const ServiceItem({
    super.key,
    required this.icon,
    required this.title,
    required this.description,
    required this.width,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: Column(
        children: [
          Icon(icon, color: Color(0xFF7800ff), size: 40),
          const SizedBox(height: 12),
          Text(
            title,
            textAlign: TextAlign.center,
            style: GoogleFonts.poppins(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            description,
            textAlign: TextAlign.center,
            style: GoogleFonts.poppins(fontSize: 14, color: Colors.white70),
          ),
        ],
      ),
    );
  }
}
