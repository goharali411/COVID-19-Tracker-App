class AppUrl {
  static const String baseUrl = 'https://disease.sh/v3/covid-19/';
  static String getWorldStatesApi() => '${baseUrl}all';
  static String getCountriesList() => '${baseUrl}countries';
}
