import 'package:bzoozle/Themes/theme_constants.dart';
import 'package:flutter/material.dart';

Color colorIndicator({String? confirmDateText, String? updateDateText}) {
  Color backgroundColor = warningRed;
  DateTime? updateDateTime;
  DateTime? confirmDateTime;
  DateTime? comparisonDateTime;
  DateTime now = DateTime.now();
  if (updateDateText == "" || updateDateText == null) {
    backgroundColor = warningRed;
  } else if (confirmDateText != "" && confirmDateText != null) {
    confirmDateTime = DateTime.parse(confirmDateText);
    comparisonDateTime = confirmDateTime;
  } else {
    updateDateTime = DateTime.parse(updateDateText);
    comparisonDateTime = updateDateTime;
  }
  if (comparisonDateTime != null &&
      comparisonDateTime.isAfter(now.subtract(const Duration(days: 30)))) {
    backgroundColor = freshGreen;
  } else if (comparisonDateTime != null &&
      comparisonDateTime.isBefore(now.subtract(const Duration(days: 60)))) {
    backgroundColor = warningRed;
  } else {
    if (comparisonDateTime != null) backgroundColor = ageingAmber;
  }

  return backgroundColor;
}
