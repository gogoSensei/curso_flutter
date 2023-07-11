import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:peliculas/providers/movies_provider.dart';
import 'package:peliculas/search/search_delegate.dart';
import 'package:peliculas/widgets/widgets.dart';

class HomeScreens extends StatelessWidget {
  const HomeScreens({super.key});

  @override
  Widget build(BuildContext context) {
    final moviesProvider = Provider.of<MoviesProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Peliculas en cines'),
        actions: [
          IconButton(
            onPressed: () => showSearch(
              context: context,
              delegate: MovieSearchDelegate(),
              useRootNavigator: true,
            ),
            icon: const Icon(Icons.search_outlined),
          )
        ],
        automaticallyImplyLeading: false,
        // bottom: PreferredSize(
        //   preferredSize: const Size.fromHeight(50.0),
        //   child: Row(
        //     mainAxisAlignment: MainAxisAlignment.center,
        //     children: [
        //       IconButton(
        //         onPressed: () => print('hola'),
        //         icon: const Icon(Icons.search_outlined),
        //       ),
        //       IconButton(
        //         onPressed: () => print('hola'),
        //         icon: const Icon(Icons.search_outlined, color: Colors.white,),
        //       )
        //     ],
        //   ),
        // ),
        // leading: Row(
        //   children: [
        //     IconButton(
        //       onPressed: () => print('hola'),
        //       icon: const Icon(Icons.search_outlined),
        //     ),
        //   ],
        // ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Tarjetas principales
            CardSwiper(
              movies: moviesProvider.onDisplayMovies,
            ),
            // Slider peliculas
            MovieSlider(
              populars: moviesProvider.popularMovies,
              onNextPage: moviesProvider.getPopularMovies,
              title: 'Populares',
            ),
          ],
        ),
      ),
    );
  }
}
