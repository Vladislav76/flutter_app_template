// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a en locale. All the
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
  String get localeName => 'en';

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "appTitle": MessageLookupByLibrary.simpleMessage("Template App"),
        "authorize": MessageLookupByLibrary.simpleMessage("Authorize"),
        "badRequestNetworkError": MessageLookupByLibrary.simpleMessage(
            "Failed to handle network request, please, try again later"),
        "home": MessageLookupByLibrary.simpleMessage("Home"),
        "internetConnectionNetworkError": MessageLookupByLibrary.simpleMessage(
            "Failed to load data, please, check your internet connection"),
        "logout": MessageLookupByLibrary.simpleMessage("Logout"),
        "notFoundNetworkError": MessageLookupByLibrary.simpleMessage(
            "Failed to find specified network resource, please, try again later"),
        "profile": MessageLookupByLibrary.simpleMessage("Profile"),
        "profileEditing":
            MessageLookupByLibrary.simpleMessage("Profile editing"),
        "profileInfo": MessageLookupByLibrary.simpleMessage("Profile info"),
        "randomize": MessageLookupByLibrary.simpleMessage("Randomize!"),
        "refresh": MessageLookupByLibrary.simpleMessage("Refresh"),
        "settings": MessageLookupByLibrary.simpleMessage("Settings"),
        "tryAgain": MessageLookupByLibrary.simpleMessage("Try again"),
        "unathorizedNetworkError": MessageLookupByLibrary.simpleMessage(
            "Access denied, you\'re not authorized"),
        "unknownDataError": MessageLookupByLibrary.simpleMessage(
            "Unknown data error, please, try again later"),
        "unknownError": MessageLookupByLibrary.simpleMessage("Unknown error"),
        "unknownNetworkError": MessageLookupByLibrary.simpleMessage(
            "Unknown network error, please, try again later")
      };
}
