import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NavBar extends StatelessWidget {
  final Function(String)? onItemSelected;
  const NavBar({super.key, this.onItemSelected});

  List<String> get navItems => ["Home", "About", "Services", "Contact"];

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final isMobile = constraints.maxWidth < 700;
        return Container(
          color: Colors.transparent,
          padding: EdgeInsets.symmetric(horizontal: isMobile ? 16 : 40, vertical: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Logo
              Image.asset(
                'assets/logo.png',
                width: 110,
                height: 40,
                fit: BoxFit.contain,
              ),

              // Navigation: Desktop or Mobile
              if (!isMobile)
                Row(
                  children: navItems
                      .map(
                        (item) => GestureDetector(
                      onTap: () {
                        if (onItemSelected != null) {
                          onItemSelected!(item);
                        }
                      },
                      child: MouseRegion(
                        cursor: SystemMouseCursors.click,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          child: Text(
                            item,
                            style: GoogleFonts.poppins(
                              fontSize: 16,
                              color: Colors.white70,
                            ),
                          ),
                        ),
                      ),
                    ),
                  )
                      .toList(),
                )
              else
                _NavPopupMenu(
                  navItems: navItems,
                  onItemSelected: onItemSelected,
                ),
            ],
          ),
        );
      },
    );
  }
}

// Mobile hamburger menu (Popup)
class _NavPopupMenu extends StatefulWidget {
  final List<String> navItems;
  final Function(String)? onItemSelected;
  const _NavPopupMenu({required this.navItems, this.onItemSelected});

  @override
  State<_NavPopupMenu> createState() => _NavPopupMenuState();
}

class _NavPopupMenuState extends State<_NavPopupMenu> {
  final GlobalKey _menuKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return IconButton(
      key: _menuKey,
      icon: const Icon(Icons.menu, color: Colors.white, size: 28),
      onPressed: () async {
        final RenderBox button =
        _menuKey.currentContext!.findRenderObject() as RenderBox;
        final RenderBox overlay =
        Overlay.of(context).context.findRenderObject() as RenderBox;
        final Offset position =
        button.localToGlobal(Offset.zero, ancestor: overlay);

        final selected = await showMenu(
          context: context,
          position: RelativeRect.fromLTRB(
            position.dx,
            position.dy + button.size.height,
            position.dx + button.size.width,
            position.dy,
          ),
          items: widget.navItems
              .map(
                (item) => PopupMenuItem(
              value: item,
              child: Text(
                item,
                style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          )
              .toList(),
          color: Colors.black,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        );

        if (selected != null && widget.onItemSelected != null) {
          widget.onItemSelected!(selected);
        }
      },
    );
  }
}
