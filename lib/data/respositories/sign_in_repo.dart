import '../models/sign_in_model.dart';

class SignInRepository {
  SignInRepository();

  // WeatherRepository({
// MetaWeatherApiClient? weatherApiClient
// }) : _weatherApiClient = weatherApiClient ?? MetaWeatherApiClient();

  // final MetaWeatherApiClient _weatherApiClient;

  Future<SignInModel> getWeather(String city) async {
    final location = await _weatherApiClient.locationSearch(city);
    final woeid = location.woeid;
    final weather = await _weatherApiClient.getWeather(woeid);
    return SignInModel();
  }
}4 