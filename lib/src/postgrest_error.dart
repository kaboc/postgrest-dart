/// A Postgrest response error
class PostgrestError {
  PostgrestError({
    required this.message,
    this.details,
    this.hint,
    this.code,
  });

  String message;
  dynamic? details;
  String? hint;
  String? code;

  factory PostgrestError.fromJson(Map<String, dynamic> json) => PostgrestError(
        message: json['message'] as String,
        details: json['details'] as dynamic?,
        hint: json['hint'] as String?,
        code: json['code'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'message': message,
        'details': details,
        'hint': hint,
        'code': code,
      };
}
