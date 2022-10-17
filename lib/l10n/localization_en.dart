import 'package:my_app/l10n/localization.dart';

class LocalizationEN implements Localization {
  @override String get move_to_login => "Move to Login";
  @override String get mail_needed => "Please enter your mail";
  @override String get pw => "Password";
  @override String get pw_required => "Password is required for login";
  @override String get valid_mail => "Please Enter a valid email";
  @override String get pw_not_valid => "Enter Valid Password (Min. 6 Character)";
  @override String get no_account => "Don't have an account?";
  @override String get sign_up => "SignUp";
  @override String get pw_mismatch => "Password don't match";
  @override String get pw_confirm => "Confirm Password";

}
