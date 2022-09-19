import 'package:bloc_project_layout/presentation/router/app_router.dart';
import 'package:bloc_project_layout/utils/simple_observer.dart';
import 'package:bloc_project_layout/utils/styles/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:path_provider/path_provider.dart';

import 'data/respositories/repo_list.dart';
import 'logic/blocs/bloc_list.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final storage = await HydratedStorage.build(
    storageDirectory: await getApplicationDocumentsDirectory(),
  );
  HydratedBlocOverrides.runZoned(
        () => runApp(MyApp()),
    storage: storage,
    blocObserver: SimpleObserver(),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [...repoProviders],
      child: MultiBlocProvider(
        providers: [...blocproviders],
        child: MaterialApp(
          title: 'Flutter Demo',
          debugShowCheckedModeBanner: false,
          theme: appTheme,
          onGenerateRoute: Routes.generateRoute,
          // initialRoute: BottomNavigationBarScreen.routeName,
        ),
      ),
    );
  }
}
