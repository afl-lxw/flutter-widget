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

class WidgetRouter {
  static const String listView = 'listView';
  static const String gridView = 'gridView';
  static const String singleChildScrollView = 'singleChildScrollView';
  static const String pageView = 'pageView';
  static const String refreshIndicator = 'refreshIndicator';
  static const String scrollable = 'scrollable';
  static const String nestedScrollView = 'nestedScrollView';
  static const String scrollbar = 'scrollbar';
  static const String scrollConfiguration = 'scrollConfiguration';
  static const String notificationListener = 'notificationListener';
  static const String animatedList = 'animatedList';
  static const String customScrollView = 'customScrollView';
  static const String sliverToBoxAdapter = 'sliverToBoxAdapter';

  static final routes = {
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
