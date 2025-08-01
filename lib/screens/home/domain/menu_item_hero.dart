import 'package:flutter/material.dart';
import 'package:flutter_sficon/flutter_sficon.dart';
import 'package:jp_app/common/blendmask.dart';
import 'package:jp_app/common/glass_elements/glass_backdrop.dart';
import 'package:jp_app/common/static_images.dart';
import 'package:jp_app/screens/home/domain/manu_item_hero_button.dart';
import 'package:jp_app/themes/styles.dart';

final Image maskImage = Image.asset(
  StaticImages.detailCutCard,
  fit: BoxFit.contain,
);

class MenuItemHero extends StatelessWidget {
  const MenuItemHero({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Center(
          child: GlassBackdrop(
            child: BlendMask(blendMode: BlendMode.dstATop, child: maskImage),
          ),
        ),
        Center(
          child: BlendMask(
            opacity: 0.5,
            blendMode: BlendMode.srcATop,
            child: maskImage,
          ),
        ),
        /* Padding to restrict content to glass area */
        Padding(
          padding: EdgeInsetsGeometry.symmetric(horizontal: 32, vertical: 0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /* Left col with heading, description, etc. */
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  /* Menu Item Heading */
                  Padding(
                    padding: EdgeInsetsGeometry.only(top: 24, left: 8),
                    child: Text(
                      "Angi's Yummy Burger",
                      style: SnackishStyles.menuItemHeading,
                    ),
                  ),
                  /* Menu Item Text */
                  Padding(
                    padding: EdgeInsetsGeometry.only(top: 8, left: 8),
                    child: Text(
                      "Delish vegan burger\nthat tastes like heaven",
                      style: SnackishStyles.menuItemText,
                    ),
                  ),
                  /* Menu Item Price */
                  Padding(
                    padding: EdgeInsetsGeometry.only(top: 16, left: 8),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      spacing: 8,
                      children: [
                        SFIcon(
                          SFIcons.sf_australsign, // 'heart.fill'
                          fontSize: SnackishStyles
                              .menuItemPrice
                              .fontSize, // fontSize instead of size
                          fontWeight:
                              FontWeight.bold, // fontWeight instead of weight
                          color: SnackishStyles.menuItemPrice.color,
                        ),
                        Text("13.99", style: SnackishStyles.menuItemPrice),
                      ],
                    ),
                  ),
                ],
              ),
              /* Right col with rating */
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Padding(
                    padding: EdgeInsetsGeometry.only(top: 24, right: 16),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      spacing: 4,
                      children: [
                        SFIcon(
                          SFIcons.sf_star_fill, // 'heart.fill'
                          fontSize: SnackishStyles
                              .menuItemText
                              .fontSize, // fontSize instead of size
                          fontWeight:
                              FontWeight.bold, // fontWeight instead of weight
                          color: Color(0xFFef83b6),
                        ),
                        Text("4.8", style: SnackishStyles.menuItemText),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        /* Menu Item Hero Button */
        Padding(
          padding: const EdgeInsets.only(top: 160, left: 40),
          child: ManuItemHeroButton(),
        ),
        /* Menu Item Image */
        Container(
          height: 295,
          child: Transform.translate(
            offset: Offset(120, 0),
            child: Transform.scale(
              scale: .75,
              child: Image.asset(StaticImages.imageBurger),
            ),
          ),
        ),
      ],
    );
  }
}
