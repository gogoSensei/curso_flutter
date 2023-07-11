import 'package:fl_components/themes/app_theme.dart';
import 'package:flutter/material.dart';

class CustomCardType2 extends StatelessWidget {
  final String imagenUrl;
  final String? name;
  const CustomCardType2({Key? key, required this.imagenUrl, this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
      elevation: 10,
      shadowColor: AppTheme.primary.withOpacity(0.6),
      child: Column(
        children: <Widget>[
          FadeInImage(
            image: NetworkImage(
              imagenUrl,
            ),
            placeholder: const AssetImage(
              'assets/jar-loading.gif',
            ),
            width: double.infinity,
            height: 230,
            fit: BoxFit.cover,
            fadeInDuration: const Duration(
              milliseconds: 300,
            ),
          ),
          if (name != null )
            Container(
                alignment: AlignmentDirectional.centerEnd,
                padding: const EdgeInsets.only(right: 20, top: 10, bottom: 10),
                child: Text(name ?? 'No Tittle')
            ),
        ],
      ),
    );
  }
}
