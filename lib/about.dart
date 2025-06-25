import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final double width = constraints.maxWidth;
        final bool isMobile = width < 700;

        // Responsive horizontal padding: use 6% of width on large screens, else 12px
        double horizontalPadding = isMobile ? 12 : width * 0.18;
        // Clamp max padding so it never gets too wide
        if (!isMobile) horizontalPadding = horizontalPadding.clamp(32, 220);

        return Padding(
          padding: EdgeInsets.symmetric(
            horizontal: isMobile ? 12 : 40, // outer section padding
            vertical: isMobile ? 24 : 40,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "About Us",
                style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                  fontSize: isMobile ? 24 : 32,
                  letterSpacing: -1,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: isMobile ? 10 : 16),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
                child: Column(
                  children: [
                    Text(
                      "At Load Byte, we don't just follow digital trends — we set them.\n",
                      style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontSize: isMobile ? 14 : 17,
                        height: 1.5,
                        fontWeight: FontWeight.w400,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      "We're a team of strategists, designers, and marketers obsessed with one thing: helping brands grow. From performance marketing to creative storytelling, we combine data with design to craft campaigns that don't just look good — they deliver real results. With a passion for innovation and a focus on ROI, we partner with ambitious businesses ready to scale. Whether you're launching, rebranding, or expanding your digital footprint, Load Byte builds tailored strategies that spark engagement, drive conversions, and fuel long-term growth.\n",
                      style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontSize: isMobile ? 14 : 17,
                        height: 1.5,
                        fontWeight: FontWeight.w400,
                      ),
                      textAlign: TextAlign.justify,
                    ),
                    Text(
                      "Innovation is our language. Results are our promise.",
                      style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontSize: isMobile ? 14 : 17,
                        height: 1.5,
                        fontWeight: FontWeight.w400,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),

              ),
            ],
          ),
        );
      },
    );
  }
}




