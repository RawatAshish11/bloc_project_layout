import '../blocs/bloc_imports.dart';


List<dynamic> blocproviders = [
  BlocProvider(
    create: (_) => SignInBloc()
  ),
];