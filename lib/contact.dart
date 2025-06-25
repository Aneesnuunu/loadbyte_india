import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class LoadByteContactSection extends StatelessWidget {
  const LoadByteContactSection({super.key});

  // === UPDATE THESE WITH YOUR ACTUAL LINKS ===
  static const String googleReviewUrl = "https://g.page/r/CTrpYosuoS0EEAE/review";
  static const String facebookUrl = "https://www.facebook.com/profile.php?id=61577573517003";
  static const String instagramUrl = "https://www.instagram.com/load_byte/";
  static const String linkedinUrl = "https://www.linkedin.com/in/loadbyte-india-1758b636b/";
  static const String twitterUrl = "https://x.com/load_byte";
  static const String whatsappUrl = "https://wa.me/917559006866";
  static const String emailAddress = "loadbyteindia@gmail.com";
  static const String phoneNumber = "+917559006866";
  static const String mapsUrl =
      "https://www.google.com/maps/dir//223%2FB,+Pookolathur,+Manjeri,+Pulpatta,+Kerala+676123/@11.1572503,75.9806982,12z/data=!4m8!4m7!1m0!1m5!1m1!1s0x3ba6499bd43850f3:0x42da12e8b62e93a!2m2!1d76.0631001!2d11.1572615?entry=ttu&g_ep=EgoyMDI1MDYxNy4wIKXMDSoASAFQAw%3D%3D";

  static const Color iconColor = Color(0xFF7800ff);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final isMobile = screenWidth < 600;

    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(
        horizontal: isMobile ? 12.0 : 20.0,
        vertical: isMobile ? 24.0 : 40.0,
      ),
      color: Colors.black,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "Contact",
            style: GoogleFonts.poppins(
              color: Colors.white,
              fontWeight: FontWeight.w700,
              fontSize: isMobile ? 24 : 32,
              letterSpacing: -1,
            ),
            textAlign: TextAlign.center,
          ),
          // Tagline above Logo
          SizedBox(height: isMobile ? 10 : 16),
          Column(
            children: [
              Image.network(
                'https://i.postimg.cc/k4WNczDW/Untitled-1.png',
                width: isMobile ? 100 : 150,
                height: isMobile ? 40 : 50,
              ),

              SizedBox(height: 10),
              Text(
                'YOUR PARTNER IN DIGITAL GROWTH',
                style: TextStyle(
                  fontSize: isMobile ? 11 : 13,
                  color: Colors.grey,
                  letterSpacing: 2,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
          SizedBox(height: isMobile ? 18 : 24),

          // Review Us
          Wrap(
            alignment: WrapAlignment.center,
            spacing: 10,
            crossAxisAlignment: WrapCrossAlignment.center,
            children: [
              ClickableSocialIcon(
                icon: FontAwesomeIcons.google,
                url: googleReviewUrl,
                tooltip: 'Review us on Google',
                iconColor: iconColor,
              ),
              GestureDetector(
                onTap: () => launchUrl(Uri.parse(googleReviewUrl), mode: LaunchMode.externalApplication),
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                  decoration: BoxDecoration(
                    color: Color(0xFF7800ff),
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: const Text(
                    'Review Us',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: isMobile ? 10 : 18),

          // Company Description
          Text(
            'LoadByte is a digital marketing and all digital solution agency helping brands scale and succeed online.\n'
                'Performance Marketing • Creative Branding • SEO • Web Development',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: isMobile ? 12.5 : 15,
              color: Colors.white,
            ),
          ),
          SizedBox(height: isMobile ? 12 : 18),

          // Social Icons
          Wrap(
            alignment: WrapAlignment.center,
            spacing: 10,
            children: const [
              ClickableSocialIcon(
                  icon: FontAwesomeIcons.facebookF,
                  url: LoadByteContactSection.facebookUrl,
                  tooltip: 'Facebook',
                  iconColor: iconColor),
              ClickableSocialIcon(
                  icon: FontAwesomeIcons.instagram,
                  url: LoadByteContactSection.instagramUrl,
                  tooltip: 'Instagram',
                  iconColor: iconColor),
              ClickableSocialIcon(
                  icon: FontAwesomeIcons.linkedinIn,
                  url: LoadByteContactSection.linkedinUrl,
                  tooltip: 'LinkedIn',
                  iconColor: iconColor),
              ClickableSocialIcon(
                  icon: FontAwesomeIcons.twitter,
                  url: LoadByteContactSection.twitterUrl,
                  tooltip: 'Twitter',
                  iconColor: iconColor),
              ClickableSocialIcon(
                  icon: FontAwesomeIcons.whatsapp,
                  url: LoadByteContactSection.whatsappUrl,
                  tooltip: 'WhatsApp',
                  iconColor: iconColor),
            ],
          ),
          SizedBox(height: isMobile ? 16 : 22),

          // Contact Info
          Wrap(
            alignment: WrapAlignment.center,
            spacing: 16,
            runSpacing: 8,
            crossAxisAlignment: WrapCrossAlignment.center,
            children: [
              GestureDetector(
                onTap: () async {
                  final Uri emailLaunchUri = Uri(
                    scheme: 'mailto',
                    path: emailAddress,
                  );
                  await launchUrl(emailLaunchUri);
                },
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: const [
                    Icon(Icons.mail, color: iconColor, size: 18),
                    SizedBox(width: 4),
                    Text(
                      'loadbyteindia@gmail.com',
                      style: TextStyle(
                          color: Colors.white70,
                          fontSize: 15,
                          decoration: TextDecoration.none),
                    ),
                  ],
                ),
              ),
              GestureDetector(
                onTap: () async {
                  final Uri telLaunchUri = Uri(
                    scheme: 'tel',
                    path: phoneNumber,
                  );
                  await launchUrl(telLaunchUri);
                },
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: const [
                    Icon(Icons.phone, color: iconColor, size: 18),
                    SizedBox(width: 4),
                    Text(
                      '+91 7559006866',
                      style: TextStyle(
                          color: Colors.white70,
                          fontSize: 15,
                          decoration: TextDecoration.none),
                    ),
                  ],
                ),
              ),
              GestureDetector(
                onTap: () async {
                  await launchUrl(Uri.parse(mapsUrl), mode: LaunchMode.externalApplication);
                },
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: const [
                    Icon(Icons.location_on, color: iconColor, size: 18),
                    SizedBox(width: 4),
                    Text(
                      'Pookolathur,Manjeri',
                      style: TextStyle(
                          color: Colors.white70,
                          fontSize: 15,
                          decoration: TextDecoration.none),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: isMobile ? 18 : 28),
        ],
      ),
    );
  }
}

class ClickableSocialIcon extends StatelessWidget {
  final IconData icon;
  final String url;
  final String? tooltip;
  final Color iconColor;

  const ClickableSocialIcon({
    required this.icon,
    required this.url,
    this.tooltip,
    this.iconColor = const Color(0xFF7800ff),
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Tooltip(
      message: tooltip ?? '',
      child: InkWell(
        borderRadius: BorderRadius.circular(22),
        onTap: () => launchUrl(Uri.parse(url), mode: LaunchMode.externalApplication),
        child: CircleAvatar(
          radius: 18,
          backgroundColor: Colors.black54,
          child: Icon(icon, size: 14, color: iconColor),
        ),
      ),
    );
  }
}
