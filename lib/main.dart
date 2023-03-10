import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_app/utilities/route/router.dart';
import 'package:my_app/utilities/route/routes.dart';
import 'package:sizer/sizer.dart';
import 'view_model/cubit/auth/register_cubit.dart';

void main() async {
  //  await MyCache.init();

  runApp(
    DevicePreview(
          enabled: !kReleaseMode,
          builder: (context) =>
      MultiBlocProvider(providers: [
    // BlocProvider(create: (_) => ColorCubit()),
    BlocProvider(create: (_) => RegisterCubit()),
  ], child: const MyApp())
      // ),
      ),
      );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // return BlocBuilder<ColorCubit, ColorCubitState>(
    //   builder: (context, state) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        // ColorCubit colorCubit = ColorCubit.get(context);
        // colorCubit.getTheme();
        return const MaterialApp(
          // home: HomePage(title: "kdfkdfk"),
          // theme:
          // colorCubit.isDarkTheme ? Themes.darkTheme : Themes.lightTheme,
          debugShowCheckedModeBanner: false,
          onGenerateRoute: onGenerate,
          initialRoute: AppRoutes.navigationPageRoute,
        );
        // });
      },
    );
  }
}
