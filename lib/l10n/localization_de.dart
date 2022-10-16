import 'package:my_app/l10n/localization.dart';

class LocalizationDE implements Localization {
  @override String get move_to_login => "Ab zum Login";
  @override String get mail_needed => "Bitte gib deine Mail ein";
  @override String get pw => "Passwort";
  @override String get pw_required => "Passwort zum Anmelden notwendig";
  @override String get valid_mail => "Bitte gib eine richtige E-Mail an";
  @override String get pw_not_valid => "Gib ein richtiges Passwort ein (Min. 6 Zeichen)";
  @override String get no_account => "Noch keinen Account?";
  @override String get sign_up => "Registrieren";
  @override String get pw_mismatch => "Passwörter stimmen nicht überein";
  @override String get pw_confirm => "Passwort bestätigen";

}
