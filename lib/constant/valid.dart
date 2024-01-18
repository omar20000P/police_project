
import 'massage.dart';

vaildInput(String val, int min, int max) {
  if (val.isEmpty) {
    return "$massageInputImpty ";
  }
  if (val.length > max) {
    return "$massageInputmax  $max";
  }
  if (val.length < min) {
    return "$massageInputmin  $min";
  }
}
