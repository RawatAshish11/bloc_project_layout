import 'package:bloc_project_layout/logic/blocs/bloc_imports.dart';

List<dynamic> repoProviders = [
  RepositoryProvider<WeatherRepository>(
    create: (context) => RepositoryA(),
  ),
];