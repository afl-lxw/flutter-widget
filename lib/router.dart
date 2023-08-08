import 'widget/ListView.dart';
import 'widget/GridView.dart';
import 'widget/SingleChildScrollView.dart';
import 'widget/PageView.dart';
import 'widget/RefreshIndicator.dart';
import 'widget/Scrollable.dart';
import 'widget/NestedScrollView.dart';
import 'widget/Scrollbar.dart';
import 'widget/ScrollConfiguration.dart';
import 'widget/NotificationListener.dart';
import 'widget/AnimatedList.dart';
import 'widget/CustomScrollView.dart';
import 'widget/SliverToBoxAdapter.dart';

import 'Animation/AlignTransition.dart';
import 'Animation/AnimatedBuilder.dart';
import 'Animation/AnimatedCrossFade.dart';
import 'Animation/AnimatedDefaultTextStyle.dart';
import 'Animation/AnimatedListState.dart';
import 'Animation/AnimatedModalBarrier.dart';
import 'Animation/AnimatedOpacity.dart';
import 'Animation/AnimatedPhysicalModel.dart';
import 'Animation/AnimatedPositioned.dart';
import 'Animation/AnimatedSize.dart';
import 'Animation/AnimatedSwitcher.dart';
import 'Animation/AnimatedWidget.dart';
import 'Animation/AnimatedTheme.dart';
import 'Animation/DecoratedBoxTransition.dart';
import 'Animation/FadeTransition.dart';
import 'Animation/Hero.dart';
import 'Animation/PositionedTransition.dart';
import 'Animation/PageRouteBuilder.dart';
import 'Animation/RotationTransition.dart';
import 'Animation/ScaleTransition.dart';
import 'Animation/SizeTransition.dart';
import 'Animation/SlideTransition.dart';
import 'Animation/Transform.dart';

import 'other/CustomShapePainter.dart';
import 'other/DatePicker.dart';
import 'other/CupertinoDatePicker.dart';

class RollWidgetRouter {
  static const String listView = 'ListView';
  static const String gridView = 'GridView';
  static const String singleChildScrollView = 'SingleChildScrollView';
  static const String pageView = 'PageView';
  static const String refreshIndicator = 'RefreshIndicator';
  static const String scrollable = 'Scrollable';
  static const String nestedScrollView = 'NestedScrollView';
  static const String scrollbar = 'Scrollbar';
  static const String scrollConfiguration = 'ScrollConfiguration';
  static const String notificationListener = 'NotificationListener';
  static const String animatedList = 'AnimatedList';
  static const String customScrollView = 'CustomScrollView';
  static const String sliverToBoxAdapter = 'SliverToBoxAdapter';

  static final router = {
    listView: (context) => const ListViewWidget(),
    gridView: (context) => const GridViewWidget(),
    singleChildScrollView: (context) => const SingleChildScrollViewWidget(),
    pageView: (context) => const PageViewWidget(),
    refreshIndicator: (context) => const RefreshIndicatorWidget(),
    scrollable: (context) => const ScrollableWidget(),
    nestedScrollView: (context) => const NestedScrollViewWidget(),
    scrollbar: (context) => const ScrollbarWidget(),
    scrollConfiguration: (context) => const ScrollConfigurationWidget(),
    notificationListener: (context) => const NotificationListenerWidget(),
    animatedList: (context) => const AnimatedListWidget(),
    customScrollView: (context) => const CustomScrollViewWidget(),
    sliverToBoxAdapter: (context) => const SliverToBoxAdapterWidget(),
  };
}

class AnimationWidgetRouter {
  // ignore: constant_identifier_names
  static const String alignTransition = 'AlignTransition';
  static const String animatedBuilder = 'AnimatedBuilder';
  static const String animatedCrossFade = 'AnimatedCrossFade';
  static const String animatedDefaultTextStyle = 'AnimatedDefaultTextStyle';
  static const String animatedListState = 'AnimatedListState';
  static const String animatedModalBarrier = 'AnimatedModalBarrier';
  static const String animatedOpacity = 'AnimatedOpacity';
  static const String animatedPhysicalModel = 'AnimatedPhysicalModel';
  static const String animatedPositioned = 'AnimatedPositioned';
  static const String animatedSize = 'AnimatedSize';
  static const String animatedSwitcher = 'AnimatedSwitcher';
  static const String animatedWidget = 'AnimatedWidget';
  static const String animatedTheme = 'AnimatedTheme';
  static const String decoratedBoxTransition = 'DecoratedBoxTransition';
  static const String fadeTransition = 'FadeTransition';
  static const String hero = 'Hero';
  static const String positionedTransition = 'PositionedTransition';
  static const String pageRouteBuilder = 'PageRouteBuilder';
  static const String rotationTransition = 'RotationTransition';
  static const String scaleTransition = 'ScaleTransition';
  static const String sizeTransition = 'SizeTransition';
  static const String slideTransition = 'SlideTransition';
  static const String transform = 'Transform';

  static final router = {
    alignTransition: (context) => AlignTransitionWidget(),
    animatedBuilder: (context) => const AnimatedBuilderWidget(),
    animatedCrossFade: (context) => const AnimatedCrossFadeWidget(),
    animatedDefaultTextStyle: (context) =>
        const AnimatedDefaultTextStyleWidget(),
    animatedListState: (context) => const AnimatedListStateWidget(),
    animatedModalBarrier: (context) => const AnimatedModalBarrierWidget(),
    animatedOpacity: (context) => const AnimatedOpacityWidget(),
    animatedPhysicalModel: (context) => const PhysicalModelWidget(),
    animatedPositioned: (context) => const AnimatedPositionedExample(),
    animatedSize: (context) => const SizeAnimationExample(),
    animatedSwitcher: (context) => const SwitcherExample(),
    animatedWidget: (context) => const AnimatedWidgetExample(),
    animatedTheme: (context) => ThemeExample(),
    decoratedBoxTransition: (context) => AnimatedDecorationExample(),
    fadeTransition: (context) => AnimationExample(),
    hero: (context) => HomePage(),
    positionedTransition: (context) => PositionedTransitionExample(),
    pageRouteBuilder: (context) => const PageRouteBuilderWidget(),
    rotationTransition: (context) => const RotationTransitionWidget(),
    scaleTransition: (context) => const ScaleTransitionWidget(),
    sizeTransition: (context) => const SizeTransitionWidget(),
    slideTransition: (context) => const SlideTransitionWidget(),
    transform: (context) => TransformExample(),
  };
}

class OtherWidgetRouter {
  static const String shapePainterWidget = 'ShapePainterWidget';
  static const String datePicker = 'DatePicker';
  // static const String datePickerCupertino = 'DatePickerCupertino';

  static final router = {
    shapePainterWidget: (context) => ShapePainterWidget(),
    datePicker: (context) => DatePickerExample(),
    // datePickerCupertino: (context) => CupertinoDatePickerExample(),
  };
}
