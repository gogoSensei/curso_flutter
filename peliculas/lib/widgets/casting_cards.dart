import 'package:flutter/material.dart';
import 'package:peliculas/models/models.dart';
import 'package:peliculas/providers/movies_provider.dart';
import 'package:provider/provider.dart';

class CastingCards extends StatelessWidget {
  final int idmovie;
  const CastingCards({super.key, required this.idmovie});

  @override
  Widget build(BuildContext context) {
    final movieProvider = Provider.of<MoviesProvider>(context, listen: false);

    return FutureBuilder(
      future: movieProvider.getMovieCast(idmovie),
      builder:(_, AsyncSnapshot<List<Cast>> snapshot) {
        if (!snapshot.hasData) {
          return Center(
            child: Container(
              margin: const EdgeInsets.all(30),
              height: 60,
              width: 60,
              child: const CircularProgressIndicator(),
            ),
          );
        }

        final List<Cast> cast = snapshot.data!;
        return Container(
          margin: const EdgeInsets.only(bottom: 30),
          width: double.infinity,
          height: 180,
          child: ListView.builder(
            itemCount: cast.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (_, index) {
              return _CastCard(cast[index]);
            },
          ),
        );
      },
    );

  }
}

class _CastCard extends StatelessWidget {
  final Cast cast;
  const _CastCard(this.cast);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      width: 110,
      height: 100,
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: FadeInImage(
              placeholder: const AssetImage('assets/no-image.jpg'),
              image: NetworkImage(cast.fullProfilePath),
              height: 140,
              width: 100,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(height: 5,),
          Text(cast.name, maxLines: 2, overflow: TextOverflow.ellipsis,)
        ],
      ),
    );
  }
}
