import 'package:flutter/material.dart';
import 'package:greenit_app/components/sheets/map_display/map_display_modal_bottom_sheet.dart';
import 'package:greenit_app/constants.dart';

class MapDisplayButton extends StatelessWidget {
  const MapDisplayButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        mapDisplayModalBottomSheet(context);
      },
      child: Container(
        height: 50,
        width: 50,
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: const Icon(
          Icons.map_outlined,
          color: kPrimaryIconColor,
        ),
      ),
    );
  }
}
