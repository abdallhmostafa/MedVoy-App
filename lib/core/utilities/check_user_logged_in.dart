import 'package:med_voy/core/helpers/app_constant.dart';
import 'package:med_voy/core/helpers/extension.dart';
import 'package:med_voy/core/helpers/shared_pref_helper.dart';

Future<void> checkUserLoggedIn() async {
  isLoggedIn =
      await SharePrefHelper.getSecuredString(SharedPrefsKey.userToken).then((value) {
    if (value.isNullOrEmpty) {
      return false;
    } else {
      return true;
    }
  });
}
