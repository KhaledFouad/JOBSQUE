import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobhub/bloc_observer.dart';
import 'package:jobhub/config/local/cache_helper.dart';
import 'package:jobhub/core/utils/app_constants.dart';
import 'package:jobhub/core/utils/service_locator.dart';
import 'package:jobhub/job_hub_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await CacheHelper.init();
  Bloc.observer = MyBlocObserver();
  setupServiceLocator();
  AppConstants.token = CacheHelper.getString(key: 'token') ?? '';
  AppConstants.userId = CacheHelper.getString(key: 'userId') ?? '';
  runApp(const JobHubApp());
}
