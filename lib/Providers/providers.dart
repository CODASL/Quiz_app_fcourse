import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';
import 'package:quiz_app/Providers/password_visibility.dart';
import 'package:quiz_app/Providers/rad_btn.dart';
import 'package:quiz_app/Providers/register_widgets.dart';

List<SingleChildWidget> providers = [
  ChangeNotifierProvider<PasswordVisibility>(
    create: (context) => PasswordVisibility(),
  ),
  ChangeNotifierProvider<RegisterWidgets>(
    create: (context) => RegisterWidgets(),
  ),
  ChangeNotifierProvider<RadBtn>(
    create: (context) => RadBtn(),
  ),
];
