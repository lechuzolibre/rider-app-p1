import 'package:client_shared/config.dart';
import 'package:client_shared/unit_of_measurement.dart';
import 'package:flutter/material.dart';
import 'package:ridy/l10n/messages.dart';

String distanceToString(BuildContext context, double distance) {
  if (unitOfMeasurement == UnitOfMeasurement.metric) {
    if (distance < 1000) {
      return S.of(context).distanceMeters(distance.toStringAsFixed(0));
    } else {
      return S.of(context).distanceKm((distance / 1000).toStringAsFixed(1));
    }
  } else {
    if (distance < 1609.34) {
      return S
          .of(context)
          .distanceFeet((distance * 3.28084).toStringAsFixed(0));
    } else {
      return S
          .of(context)
          .distanceMiles((distance / 1609.34).toStringAsFixed(1));
    }
  }
}
