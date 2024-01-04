import 'package:flutter/material.dart';

void main() => runApp(TabBarSample());

//视图项数据
class ItemView {
  final String title; //标题
  final IconData icon;

  const ItemView({required this.title, required this.icon}); //图标
}

const List<ItemView> items = [
  ItemView(title: '自驾', icon: Icons.directions_car),
  ItemView(title: '自行车', icon: Icons.directions_bike),
  ItemView(title: '轮船', icon: Icons.directions_boat),
  ItemView(title: '公交车', icon: Icons.directions_bus),
  ItemView(title: '火车', icon: Icons.directions_railway),
  ItemView(title: '步行', icon: Icons.directions_walk),
];

class TabBarSample extends StatelessWidget {
  const TabBarSample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: items.length,
        child: Scaffold(
          appBar: AppBar(
            title: const Text("TabBar选项卡示例"),
            bottom: TabBar(
              tabs: items
                  .map(
                    (e) => Tab(
                      text: e.title,
                      icon: Icon(e.icon),
                    ),
                  )
                  .toList(),
            ),
          ),
          body: TabBarView(
            children: items
                .map(
                  (e) => Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: SelectedView(item: e),
                  ),
                )
                .toList(),
          ),
        ),
      ),
    );
  }
}

class SelectedView extends StatelessWidget {
  const SelectedView({Key? key, required this.item}) : super(key: key);
  final ItemView item;

  @override
  Widget build(BuildContext context) {
    final TextStyle? textStyle = Theme.of(context).textTheme.headline4;
    return Card(
      color: Colors.white,
      child: Center(
        child: Column(
          children: [
            Icon(
              item.icon,
              size: 128.0,
              color: textStyle?.color,
            ),
            Text(
              item.title,
              style: textStyle,
            )
          ],
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
        ),
      ),
    );
  }
}
