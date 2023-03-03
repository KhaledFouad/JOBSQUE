// import 'package:bloc/bloc.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:meta/meta.dart';

// import '../../../controller/data/local/shared.dart';
// import '../../../utilities/enums/enums.dart';

// part 'color_cubit_state.dart';

// class ColorCubit extends Cubit<ColorCubitState> {
//   ColorCubit() : super(ColorCubitInitial());
//   static ColorCubit get(context) => BlocProvider.of(context);

//   bool isDarkTheme = false;
//   void changeAppTheme() {
//     isDarkTheme = !isDarkTheme;
//     MyCache.putBool(key: MyCacheKey.theme, value: isDarkTheme);
//     emit(ChangeColorThemeState());
//   }

//   void getTheme() {
//     isDarkTheme = MyCache.getBool(key: MyCacheKey.theme);
//     emit(GetColorTheme());
//   }
// }
