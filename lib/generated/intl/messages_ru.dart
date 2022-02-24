// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a ru locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes
// ignore_for_file:unnecessary_string_interpolations, unnecessary_string_escapes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'ru';

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "appTitle":
            MessageLookupByLibrary.simpleMessage("Шаблонное приложение"),
        "authorize": MessageLookupByLibrary.simpleMessage("Войти"),
        "badRequestNetworkError": MessageLookupByLibrary.simpleMessage(
            "Не получилось обработать сетевой запрос, пожалуйста, повторите попытку позже"),
        "internetConnectionNetworkError": MessageLookupByLibrary.simpleMessage(
            "Не получилось загрузить данные, пожалуйста, проверьте Интернет-соединение"),
        "logout": MessageLookupByLibrary.simpleMessage("Выйти"),
        "notFoundNetworkError": MessageLookupByLibrary.simpleMessage(
            "Не получилось найти указанный сетевой ресурс, пожалуйста, повторите попытку позже"),
        "randomize": MessageLookupByLibrary.simpleMessage("Рандомизировать!"),
        "tryAgain": MessageLookupByLibrary.simpleMessage("Попровать снова"),
        "unathorizedNetworkError": MessageLookupByLibrary.simpleMessage(
            "Доступ запрещен, Вы не авторизованы"),
        "unknownDataError": MessageLookupByLibrary.simpleMessage(
            "Неизвестная ошибка данных, пожалуйста, повторите попытку позже"),
        "unknownError":
            MessageLookupByLibrary.simpleMessage("Неизвестная ошибка"),
        "unknownNetworkError": MessageLookupByLibrary.simpleMessage(
            "Неизвестная сетевая ошибка, пожалуйста, повторите попытку позже")
      };
}
