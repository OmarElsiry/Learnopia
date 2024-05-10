import 'package:intl/intl.dart';
// Access to the current locale
// Be careful when using padding only (right and left)
bool iscurrentlocale() {
  String currentLocale = Intl.getCurrentLocale();
  // Assuming you want to check if the current locale is English
  return currentLocale == 'en';
}
// Example: Here I want to check if Arabic is the current language of the program
bool isArabic() {
  return Intl.getCurrentLocale() == 'ar';
}
