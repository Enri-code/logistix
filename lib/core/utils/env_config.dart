// ignore_for_file: non_constant_identifier_names

import 'dart:io';

import 'package:flutter/foundation.dart';

///Ensure the [EnvConfig.extract] function is called before the class is used
class EnvConfig {
  final String apiUrl;
  final String ENV;
  final String googleMapApiUrl;
  final String googlePlaceApiUrl;
  final String googleApiKey;

  // final String supabaseAnonKey;
  // final String supabaseUrl;

  EnvConfig._internal({
    required this.apiUrl,
    required this.ENV,
    required this.googleApiKey,
    required this.googleMapApiUrl,
    required this.googlePlaceApiUrl,
    // required this.supabaseAnonKey,
    // required this.supabaseUrl,
  });

  static EnvConfig? _instance;

  static EnvConfig get instance => _instance!;

  bool get isDev => kDebugMode || ENV == 'DEV';

  ///Ensure this function is called before the class is used
  static void extract(Map<String, String> variables) {
    _instance = EnvConfig._internal(
      ENV: variables['ENV']!,
      apiUrl: variables['API_URL']!,
      googleMapApiUrl: variables['GOOGLE_MAP_API_URL']!,
      googlePlaceApiUrl: variables['GOOGLE_PLACE_API_URL']!,
      googleApiKey:
          (Platform.isAndroid
              ? variables['GOOGLE_MAP_ANDROID_KEY']
              : variables['GOOGLE_MAP_IOS_KEY'])!,
      // supabaseUrl: variables['SUPABASE_URL']!,
      // supabaseAnonKey: variables['SUPABASE_ANON_KEY']!,
    );
  }
}
