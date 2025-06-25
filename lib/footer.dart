import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  void _showBlurDialog(BuildContext context, String title, Widget contentWidget) {
    showDialog(
      context: context,
      barrierColor: Colors.black,
      builder: (context) {
        return BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 6, sigmaY: 6),
          child: AlertDialog(
            backgroundColor: Colors.grey[900]!,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            titlePadding: const EdgeInsets.fromLTRB(20, 20, 8, 0),
            contentPadding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
            insetPadding: const EdgeInsets.symmetric(horizontal: 40, vertical: 100),
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  title,
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w600,
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
                IconButton(
                  icon: const Icon(Icons.close, color: Colors.white70),
                  onPressed: () => Navigator.of(context).pop(),
                ),
              ],
            ),
            content: SingleChildScrollView(child: contentWidget),
          ),
        );
      },
    );
  }

  Widget _privacyPolicyContent() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _paragraph(
            "At LoadByte, we respect your privacy. This website does not collect personal data or use cookies."),
        _paragraph(
            "If you contact us through email or social media, we only use that information to respond to your inquiry."),
        _paragraph(
            "We do not sell or share your information with third parties."),
        _paragraph(
            "This policy may be updated as needed. Continued use of this website signifies your acceptance."),
        _contactInfo(),
      ],
    );
  }

  Widget _termsContent() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _paragraph(
            "By accessing this website, you agree to the following terms:"),
        _bullet("All content on this site is owned by LoadByte unless stated otherwise."),
        _bullet("Do not reuse or reproduce content without permission."),
        _bullet("We strive for accuracy but do not guarantee content completeness."),
        _bullet("We may update these terms at any time."),
        _contactInfo(),
      ],
    );
  }

  Widget _paragraph(String text) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Text(
        text,
        style: GoogleFonts.poppins(
          fontSize: 14,
          color: Colors.white70,
          height: 1.6,
        ),
      ),
    );
  }

  Widget _bullet(String text) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 3),
            child: Icon(Icons.circle, size: 6, color: Colors.white70),
          ),
          const SizedBox(width: 8),
          Expanded(
            child: Text(
              text,
              style: GoogleFonts.poppins(
                fontSize: 14,
                color: Colors.white70,
                height: 1.6,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _contactInfo() {
    return Padding(
      padding: const EdgeInsets.only(top: 16),
      child: Text(
        "For any questions, please contact us at loadbyteindia@gmail.com",
        style: GoogleFonts.poppins(
          fontSize: 13,
          color: Colors.white54,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final isMobile = constraints.maxWidth < 600;

        return Container(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 14),
          decoration: const BoxDecoration(
            border: Border(top: BorderSide(color: Colors.white12)),
          ),
          child: isMobile
              ? Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                'assets/logo.png',
                width: 150,
                height: 30,
              ),
              const SizedBox(height: 12),
              Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      _showBlurDialog(context, "Privacy Policy", _privacyPolicyContent());
                    },
                    child: Text(
                      "Privacy Policy",
                      style: GoogleFonts.poppins(
                        color: Colors.white70,
                        fontSize: 12,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                  const SizedBox(height: 8),
                  GestureDetector(
                    onTap: () {
                      _showBlurDialog(context, "Terms of Service", _termsContent());
                    },
                    child: Text(
                      "Terms of Service",
                      style: GoogleFonts.poppins(
                        color: Colors.white70,
                        fontSize: 12,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          )
              : Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(
                'assets/logo.png',
                width: 150,
                height: 30,
              ),
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      _showBlurDialog(context, "Privacy Policy", _privacyPolicyContent());
                    },
                    child: Text(
                      "Privacy Policy",
                      style: GoogleFonts.poppins(
                        color: Colors.white70,
                        fontSize: 12,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                  const SizedBox(width: 16),
                  GestureDetector(
                    onTap: () {
                      _showBlurDialog(context, "Terms of Service", _termsContent());
                    },
                    child: Text(
                      "Terms of Service",
                      style: GoogleFonts.poppins(
                        color: Colors.white70,
                        fontSize: 12,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }

}
