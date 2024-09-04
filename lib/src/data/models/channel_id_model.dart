import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:isar/isar.dart';
import 'package:midnight_suspense/src/utils/extensions.dart';

part 'channel_id_model.freezed.dart';
part 'channel_id_model.g.dart';

/// Encapsulates a valid YouTube channel ID.
@Embedded(ignore: {'copyWith'})
@Freezed(toJson: true, fromJson: true)
class ChannelId with _$ChannelId {
  /// Initializes an instance of [ChannelId]
  factory ChannelId({@Default(null) String? value}) {
    final id = parseChannelId(value);
    if (id == null) {
      throw ArgumentError.value(value, 'value', 'Invalid channel id');
    }
    return ChannelId._internal(id);
  }

  const factory ChannelId._internal(
    /// ID as a string.
    String? value,
  ) = _ChannelId;

  const ChannelId._();

  ///  Converts [obj] to a [ChannelId] by calling .toString on that object.
  /// If it is already a [ChannelId], [obj] is returned
  factory ChannelId.fromString(dynamic obj) {
    if (obj is ChannelId) {
      return obj;
    }
    return ChannelId(value: obj.toString());
  }

  /// Returns true if the given id is a valid channel id.
  static bool validateChannelId(String id) {
    if (id.isNullOrWhiteSpace) {
      return false;
    }

    if (!id.startsWith('UC')) {
      return false;
    }

    if (id.length != 24) {
      return false;
    }

    return !RegExp(r'[^0-9a-zA-Z_\-]').hasMatch(id);
  }

  /// Parses a channel id from an url.
  /// Returns null if the username is not found.
  static String? parseChannelId(String? url) {
    if (url.isNullOrWhiteSpace) {
      return null;
    }

    if (validateChannelId(url!)) {
      return url;
    }

    final regMatch = RegExp(r'youtube\..+?/channel/(.*?)(?:\?|&|/|$)').firstMatch(url)?.group(1);
    if (!regMatch.isNullOrWhiteSpace && validateChannelId(regMatch!)) {
      return regMatch;
    }
    return null;
  }

  @override
  String toString() => value ?? '';

  factory ChannelId.fromJson(Map<String, dynamic> json) => _$ChannelIdFromJson(json);
}
