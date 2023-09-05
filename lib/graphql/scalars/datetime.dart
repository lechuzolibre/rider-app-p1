DateTime fromGraphQLDateTimeToDartDateTime(String data) => DateTime.parse(data);

String fromDartDateTimeToGraphQLDateTime(DateTime data) =>
    data.toIso8601String();

String? fromDartDateTimeNullableToGraphQLDateTimeNullable(DateTime? datetime) =>
    datetime?.toIso8601String();

DateTime? fromGraphQLDateTimeNullableToDartDateTimeNullable(
        String? iso8601Date) =>
    iso8601Date != null ? DateTime.parse(iso8601Date) : null;
