import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'core/app_theme.dart';
import 'features/posts/presentation/bloc/add_delete_update_post/add_delete_update_post_bloc.dart';
import 'features/posts/presentation/bloc/posts/posts_bloc.dart';
import 'features/posts/presentation/pages/posts_page.dart';
import 'injection_container.dart' as di;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await di.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<PostsBloc>(
          create: (context) => di.sl<PostsBloc>()..add(GetAllPostsEvent()),
        ),
        BlocProvider<AddDeleteUpdatePostBloc>(
          create: (context) => di.sl<AddDeleteUpdatePostBloc>(),
        ),
      ],
      child: MaterialApp(
        title: 'Clean Architecture',
        debugShowCheckedModeBanner: false,
        theme: appTheme,
        home: const PostsPage(),
      ),
    );
  }
}
