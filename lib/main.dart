import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:toktik/insfrastructure/datasources/local_video_datasource_impl.dart';
import 'package:toktik/insfrastructure/repositories/video_posts_repository_impl.dart';
import 'package:toktik/presentation/providers/discover_provider.dart';
import 'package:toktik/presentation/screens/discover/discover_screen.dart';
import 'package:toktik/theme/app_theme.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final videoPostReposity = VideoPostsRepositoryImpl(
          videosDatasource: LocalVideoDatasource()
        );

    return MultiProvider(
      providers: [
        /* El comportamiento natural de los ChangeNotifierProvider() es que hasta que no sea necesario no crea
           la instancia, osea es como un LazyLoad, para cambiar esto usamo el atributo lazy: false  */
        ChangeNotifierProvider(
            lazy: false,
            /* Los puntos es un operador de cascada que nos dice despues de inicializar DiscoverProvider()
           manda a llamar la funcion loadNextPage(), vuelve a apuntar a nuestro objecto pricipal es como
           escribir DiscoverProvider(), DiscoverProvider().loadNextPage() */
            create: (_) => DiscoverProvider( videosRepository: videoPostReposity )..loadNextPage())
      ],
      child: MaterialApp(
        title: 'Material App',
        debugShowCheckedModeBanner: false,
        theme: AppTheme().getTheme(),
        home: const DiscoverScreen(),
      ),
    );
  }
}
