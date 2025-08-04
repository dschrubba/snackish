import 'package:flutter/material.dart';
import 'package:flutter_sficon/flutter_sficon.dart';
import 'package:jp_app/screens/home/overlays/menu_item_overlay.dart';
import 'package:jp_app/themes/colors.dart';
import 'package:jp_app/themes/styles.dart';

class MenuItem extends StatelessWidget {
  final double width;
  final double? height;
  final double padding;
  final MenuItemData itemData;

  const MenuItem({
    super.key,
    this.width = 228,
    this.height,
    this.padding = 16,
    required this.itemData,
  });

  static const double borderRadius = 24;

  static const menuItemGradient = LinearGradient(
    begin: Alignment(0, -1.33),
    end: Alignment.bottomCenter,
    colors: [
      SnackishColors.menuItemGradientA,
      SnackishColors.menuItemGradientB,
      SnackishColors.menuItemGradientC,
    ],
  );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: Padding(
            padding: EdgeInsets.all(padding),
            child: Stack(
              children: [ Container(
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  border: Border.all(width: 1, color: Color(0x7FFFFFFF)),
                  borderRadius: BorderRadius.circular(borderRadius),
                  gradient: menuItemGradient,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      /* Image */
                      Transform.scale(
                        scale: 1.2,
                        child: Image.asset(itemData.imageAssetUrl),
                      ),
                      /* */
                      SizedBox(height: 8),
                      /* Item Name */
                      Text(itemData.itemName, style: SnackishStyles.menuItemName),
                      /* Item Body */
                      Text(itemData.itemDescription, style: SnackishStyles.menuItemBody),
                      /* */
                      SizedBox(height: 8),
                      /* Price & Likes */
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            spacing: 4,
                            children: [
                              /* Price */
                              SFIcon(
                                SFIcons.sf_australsign, // 'heart.fill'
                                fontSize: SnackishStyles
                                    .menuItemBody
                                    .fontSize, // fontSize instead of size
                                fontWeight: FontWeight
                                    .normal, // fontWeight instead of weight
                                color: SnackishStyles.menuItemHeroPrice.color,
                              ),
                              Text(
                                itemData.itemPrice.toString(),
                                style: SnackishStyles.menuItemPrice,
                              ),
                            ],
                          ),
                          Row(
                            spacing: 4,
                            children: [
                              /* Likes */
                              SFIcon(
                                SFIcons.sf_heart, // 'heart.fill'
                                fontSize:
                                    SnackishStyles.menuItemBody.fontSize! -
                                    1, // fontSize instead of size
                                fontWeight: FontWeight
                                    .normal, // fontWeight instead of weight
                                color: SnackishStyles.menuItemBody.color,
                              ),
                              Text(itemData.itemLikes.toString(), style: SnackishStyles.menuItemBody),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(borderRadius),
                child: Material(
                  color: Colors.transparent,
                  child: InkWell(
                    onTap: () {
                      showModalBottomSheet(
                        context: context,
                        backgroundColor: Colors.transparent,
                        builder: (context) => MenuItemOverlay(
                          itemData: itemData,
                          )
                        );
                    },
                  ),
                ),
              )
              ],
            ),
      ),
    );
  }
}

class MenuItemData {
  final String imageAssetUrl;
  final String itemName;
  final String itemDescription;
  final double itemPrice;
  final double itemLikes;

  MenuItemData(
    this.imageAssetUrl,
    this.itemName,
    this.itemDescription,
    this.itemPrice,
    this.itemLikes,
  );
}
