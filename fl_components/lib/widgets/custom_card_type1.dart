import 'package:flutter/material.dart';
import 'package:fl_components/themes/app_theme.dart';

class CustomCardType1 extends StatelessWidget {
  const CustomCardType1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          const ListTile(
            leading: Icon(
              Icons.photo_album_outlined,
              color: AppTheme.primary,
            ),
            title: Text('Soy un titulo'),
            subtitle: Text(
                'Et esse enim sunt nisi nulla do mollit anim. Ut qui anim ad magna quis magna sint cupidatat pariatur mollit incididunt incididunt quis. Cupidatat enim magna culpa deserunt officia magna in. Aute esse irure exercitation pariatur nulla commodo. Incididunt consectetur deserunt pariatur occaecat tempor deserunt do ex Lorem. Cillum voluptate officia tempor et consectetur eu sunt.'),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 5.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {},
                  child: const Text('Cancel'),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text('OK'),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
