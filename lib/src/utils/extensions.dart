/// Utility for Strings.
extension StringUtility2 on String? {
  /// Returns true if the string is null or empty.
  bool get isNullOrWhiteSpace {
    if (this == null) {
      return true;
    }
    if (this!.trim().isEmpty) {
      return true;
    }
    return false;
  }

  String get capitalize {
    if (isNullOrWhiteSpace) {
      return this!;
    }
    return '${this![0].toUpperCase()}${this!.substring(1)}';
  }
}

extension BoolUtility2 on bool? {
  /// Returns true if the bool is null or false.
  bool get isNullOrFalse {
    if (this == null) {
      return true;
    }
    if (this == false) {
      return true;
    }
    return false;
  }
}
