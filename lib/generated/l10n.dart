// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Template App`
  String get appTitle {
    return Intl.message(
      'Template App',
      name: 'appTitle',
      desc: '',
      args: [],
    );
  }

  /// `Authorize`
  String get authorize {
    return Intl.message(
      'Authorize',
      name: 'authorize',
      desc: '',
      args: [],
    );
  }

  /// `Logout`
  String get logout {
    return Intl.message(
      'Logout',
      name: 'logout',
      desc: '',
      args: [],
    );
  }

  /// `Randomize!`
  String get randomize {
    return Intl.message(
      'Randomize!',
      name: 'randomize',
      desc: '',
      args: [],
    );
  }

  /// `Refresh`
  String get refresh {
    return Intl.message(
      'Refresh',
      name: 'refresh',
      desc: '',
      args: [],
    );
  }

  /// `Try again`
  String get tryAgain {
    return Intl.message(
      'Try again',
      name: 'tryAgain',
      desc: '',
      args: [],
    );
  }

  /// `Failed to handle network request, please, try again later`
  String get badRequestNetworkError {
    return Intl.message(
      'Failed to handle network request, please, try again later',
      name: 'badRequestNetworkError',
      desc: '',
      args: [],
    );
  }

  /// `Failed to find specified network resource, please, try again later`
  String get notFoundNetworkError {
    return Intl.message(
      'Failed to find specified network resource, please, try again later',
      name: 'notFoundNetworkError',
      desc: '',
      args: [],
    );
  }

  /// `Access denied, you're not authorized`
  String get unathorizedNetworkError {
    return Intl.message(
      'Access denied, you\'re not authorized',
      name: 'unathorizedNetworkError',
      desc: '',
      args: [],
    );
  }

  /// `Failed to load data, please, check your internet connection`
  String get internetConnectionNetworkError {
    return Intl.message(
      'Failed to load data, please, check your internet connection',
      name: 'internetConnectionNetworkError',
      desc: '',
      args: [],
    );
  }

  /// `Unknown network error, please, try again later`
  String get unknownNetworkError {
    return Intl.message(
      'Unknown network error, please, try again later',
      name: 'unknownNetworkError',
      desc: '',
      args: [],
    );
  }

  /// `Unknown data error, please, try again later`
  String get unknownDataError {
    return Intl.message(
      'Unknown data error, please, try again later',
      name: 'unknownDataError',
      desc: '',
      args: [],
    );
  }

  /// `Unknown error`
  String get unknownError {
    return Intl.message(
      'Unknown error',
      name: 'unknownError',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ru'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
