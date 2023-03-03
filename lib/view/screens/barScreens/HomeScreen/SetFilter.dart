import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Future<T?> showModalBottomSheet<T>({
  required BuildContext context,
  required WidgetBuilder builder,
  Color? backgroundColor,
  double? elevation,
  ShapeBorder? shape,
  Clip? clipBehavior,
  BoxConstraints? constraints,
  Color? barrierColor,
  bool isScrollControlled = false,
  bool useRootNavigator = false,
  bool isDismissible = true,
  bool enableDrag = true,
  bool useSafeArea = false,
  RouteSettings? routeSettings,
  AnimationController? transitionAnimationController,
  Offset? anchorPoint,
}) {
  assert(context != null);
  assert(builder != null);
  assert(isScrollControlled != null);
  assert(useRootNavigator != null);
  assert(isDismissible != null);
  assert(enableDrag != null);
  assert(debugCheckHasMediaQuery(context));
  assert(debugCheckHasMaterialLocalizations(context));

  final NavigatorState navigator =
      Navigator.of(context, rootNavigator: useRootNavigator);
  return navigator.push(ModalBottomSheetRoute<T>(
    builder: builder,
    capturedThemes:
        InheritedTheme.capture(from: context, to: navigator.context),
    isScrollControlled: isScrollControlled,
    barrierLabel: MaterialLocalizations.of(context).modalBarrierDismissLabel,
    backgroundColor: backgroundColor,
    elevation: elevation,
    shape: shape,
    clipBehavior: clipBehavior,
    constraints: constraints,
    isDismissible: isDismissible,
    modalBarrierColor:
        barrierColor ?? Theme.of(context).bottomSheetTheme.modalBarrierColor,
    enableDrag: enableDrag,
    settings: routeSettings,
    transitionAnimationController: transitionAnimationController,
    anchorPoint: anchorPoint,
    useSafeArea: useSafeArea,
  ));
}
