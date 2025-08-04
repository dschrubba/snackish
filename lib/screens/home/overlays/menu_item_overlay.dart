import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_lorem/flutter_lorem.dart';
import 'package:flutter_sficon/flutter_sficon.dart';
import 'package:jp_app/common/glass_elements/glass_backdrop.dart';
import 'package:jp_app/screens/home/domain/menu_item.dart';
import 'package:jp_app/themes/colors.dart';
import 'package:jp_app/themes/styles.dart';

class MenuItemOverlay extends StatelessWidget {
  final MenuItemData itemData;

  const MenuItemOverlay({super.key, required this.itemData});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              color: SnackishColors.menuItemOberlayBg,
              borderRadius: BorderRadius.circular(16),
            ),
            padding: EdgeInsets.symmetric(horizontal: 48, vertical: 32),
          ),
          /* Image */
          Transform.translate(
            offset: Offset(0, -192),
            child: Transform.scale(
              scale: 1,
              child: Image.asset(itemData.imageAssetUrl),
            ),
          ),
          /* Glass Container */
          Center(
            child: Padding(
              padding: const EdgeInsets.only(
                top: 128,
                right: 32,
                bottom: 32,
                left: 32,
              ),
              child: ClipRRect(
                borderRadius: BorderRadiusGeometry.circular(32),
                child: Stack(
                  children: [
                    GlassBackdrop(),
                    Container(
                      padding: EdgeInsetsGeometry.all(16),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(32),
                        border: BoxBorder.all(
                          width: 1,
                          color: Color(0x23FFFFFF),
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsetsGeometry.symmetric(
                          horizontal: 16,
                          vertical: 8,
                        ),
                        /* Main Content Column */
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          /* Likes */
                          children: [
                            Row(
                              spacing: 4,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                SFIcon(
                                  SFIcons.sf_heart, // 'heart.fill'
                                  fontSize: SnackishStyles
                                      .menuItemBody
                                      .fontSize, // fontSize instead of size
                                  fontWeight: FontWeight
                                      .normal, // fontWeight instead of weight
                                  color: SnackishStyles.menuItemBody.color,
                                ),
                                Text(
                                  itemData.itemLikes.round().toString(),
                                  style: SnackishStyles.menuItemBody,
                                ),
                              ],
                            ),

                            /* Header */
                            Text(itemData.itemName, style: SnackishStyles.headingMedium.copyWith(
                              fontWeight: FontWeight.w700
                            )),

                            /* Body */
                            Text(
                              itemData.itemDescription +
                                  lorem(paragraphs: 1, words: 25),
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                height: 1.1,
                                color: SnackishStyles.menuItemBody.color!.withAlpha(192),
                                fontSize: 16,
                                fontWeight: FontWeight.w300
                              )
                            ),

                            /* Price */
                            Row(
                              spacing: 4,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SFIcon(
                                  SFIcons.sf_australsign, // 'heart.fill'
                                  fontSize: 20, // fontSize instead of size
                                  fontWeight: FontWeight.w700, // fontWeight instead of weight
                                  color: SnackishStyles.menuItemBody.color,
                                ),
                                Text(
                                  itemData.itemLikes.round().toString(),
                                  style: SnackishStyles.headingMedium.copyWith(
                                    fontWeight: FontWeight.w700
                                  ),
                                ),
                              ],
                            ),

                            /* Divider */
                            Divider(thickness: .5),

                            /* Bottom Row */
                            Row(
                              children: [
                                /* Bottom Row: Ingredients */
                                Expanded(
                                  child: Column(
                                    spacing: 8,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text("Ingredients", style: SnackishStyles.menuItemPrice.copyWith(
                                        color: SnackishColors.textLightTwoThirds
                                      ),),
                                      /* Ingredient Icons */
                                      Row(
                                        spacing: 4,
                                        children: [
                                          SFIcon(
                                            SFIcons.sf_circle,
                                            color: SnackishColors.textLightTwoThirds,
                                            fontSize: 16,
                                          ),
                                          SFIcon(
                                            SFIcons.sf_circle,
                                            color: SnackishColors.textLightTwoThirds,
                                            fontSize: 16,
                                          ),
                                          SFIcon(
                                            SFIcons.sf_circle,
                                            color: SnackishColors.textLightTwoThirds,
                                            fontSize: 16,
                                          ),
                                          SFIcon(
                                            SFIcons.sf_circle,
                                            color: SnackishColors.textLightTwoThirds,
                                            fontSize: 16,
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                /* Bottom Row: Reviews */
                                Expanded(
                                  child: Column(
                                    spacing: 8,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text("Reviews", style: SnackishStyles.menuItemPrice.copyWith(
                                        color: SnackishColors.textLightTwoThirds
                                      ),),
                                      Row(
                                        children: [
                                          SFIcon(
                                            SFIcons.sf_star_fill,
                                            color: SnackishColors.textLightTwoThirds,
                                            fontSize: 14,
                                          ),
                                          SFIcon(
                                            SFIcons.sf_star_fill,
                                            color: SnackishColors.textLightTwoThirds,
                                            fontSize: 14,
                                          ),
                                          SFIcon(
                                            SFIcons.sf_star_fill,
                                            color: SnackishColors.textLightTwoThirds,
                                            fontSize: 14,
                                          ),
                                          SFIcon(
                                            SFIcons.sf_star_fill,
                                            color: SnackishColors.textLightTwoThirds,
                                            fontSize: 14,
                                          ),
                                          SFIcon(
                                            SFIcons.sf_star,
                                            color: SnackishColors.textLightTwoThirds, 
                                            fontSize: 14),
                                          SizedBox(width: 14),
                                      Text("4.0", style: SnackishStyles.menuItemPrice.copyWith(
                                        color: SnackishColors.textLightTwoThirds
                                      ),),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
