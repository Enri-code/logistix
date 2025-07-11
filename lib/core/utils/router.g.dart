// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'router.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
      $homePageRoute,
      $foodOrderPageRoute,
      $newDeliveryPageRoute,
      $chatPageRoute,
      $riderTrackerPageRoute,
      $locationPickerPageRoute,
    ];

RouteBase get $homePageRoute => GoRouteData.$route(
      path: '/home',
      factory: _$HomePageRoute._fromState,
    );

mixin _$HomePageRoute on GoRouteData {
  static HomePageRoute _fromState(GoRouterState state) => const HomePageRoute();

  @override
  String get location => GoRouteData.$location(
        '/home',
      );

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $foodOrderPageRoute => GoRouteData.$route(
      path: '/food',
      factory: _$FoodOrderPageRoute._fromState,
    );

mixin _$FoodOrderPageRoute on GoRouteData {
  static FoodOrderPageRoute _fromState(GoRouterState state) =>
      const FoodOrderPageRoute();

  @override
  String get location => GoRouteData.$location(
        '/food',
      );

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $newDeliveryPageRoute => GoRouteData.$route(
      path: '/delivery',
      factory: _$NewDeliveryPageRoute._fromState,
    );

mixin _$NewDeliveryPageRoute on GoRouteData {
  static NewDeliveryPageRoute _fromState(GoRouterState state) =>
      const NewDeliveryPageRoute();

  @override
  String get location => GoRouteData.$location(
        '/delivery',
      );

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $chatPageRoute => GoRouteData.$route(
      path: '/chat',
      factory: _$ChatPageRoute._fromState,
    );

mixin _$ChatPageRoute on GoRouteData {
  static ChatPageRoute _fromState(GoRouterState state) => ChatPageRoute(
        state.extra as UserData,
      );

  ChatPageRoute get _self => this as ChatPageRoute;

  @override
  String get location => GoRouteData.$location(
        '/chat',
      );

  @override
  void go(BuildContext context) => context.go(location, extra: _self.$extra);

  @override
  Future<T?> push<T>(BuildContext context) =>
      context.push<T>(location, extra: _self.$extra);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location, extra: _self.$extra);

  @override
  void replace(BuildContext context) =>
      context.replace(location, extra: _self.$extra);
}

RouteBase get $riderTrackerPageRoute => GoRouteData.$route(
      path: '/track-rider',
      factory: _$RiderTrackerPageRoute._fromState,
    );

mixin _$RiderTrackerPageRoute on GoRouteData {
  static RiderTrackerPageRoute _fromState(GoRouterState state) =>
      RiderTrackerPageRoute(
        state.extra as RiderData,
      );

  RiderTrackerPageRoute get _self => this as RiderTrackerPageRoute;

  @override
  String get location => GoRouteData.$location(
        '/track-rider',
      );

  @override
  void go(BuildContext context) => context.go(location, extra: _self.$extra);

  @override
  Future<T?> push<T>(BuildContext context) =>
      context.push<T>(location, extra: _self.$extra);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location, extra: _self.$extra);

  @override
  void replace(BuildContext context) =>
      context.replace(location, extra: _self.$extra);
}

RouteBase get $locationPickerPageRoute => GoRouteData.$route(
      path: '/location-picker',
      factory: _$LocationPickerPageRoute._fromState,
    );

mixin _$LocationPickerPageRoute on GoRouteData {
  static LocationPickerPageRoute _fromState(GoRouterState state) =>
      const LocationPickerPageRoute();

  @override
  String get location => GoRouteData.$location(
        '/location-picker',
      );

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}
