import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_snake_navigationbar/flutter_snake_navigationbar.dart';
import 'package:game_app/views/ui/Home/Home_page.dart';
import 'package:game_app/views/ui/Home/Nav_slider.dart';
import 'package:get/get.dart';
import '../../style/colors.dart';
import '../AddGame/Add_game.dart';
import '../ChooseGame/Choose_a_game.dart';
import '../Orders/Orders_page.dart';


class MainNav extends StatefulWidget {
  MainNav({Key? key, required this.selectedIndex}) : super(key: key);
  final int selectedIndex;
  @override
  State<MainNav> createState() => _MainNavState(selectedIndex);
}

final BorderRadius _borderRadius = const BorderRadius.only(
  topLeft: Radius.circular(30),
  topRight: Radius.circular(30),
);
ShapeBorder? bottomBarShape = const RoundedRectangleBorder(
  borderRadius: BorderRadius.only(
    bottomRight: Radius.circular(0),
    bottomLeft: Radius.circular(0),
    topRight: Radius.circular(30),
    topLeft: Radius.circular(30),
  ),
);
SnakeBarBehaviour snakeBarStyle = SnakeBarBehaviour.pinned;
EdgeInsets padding = const EdgeInsets.all(0);
int _selectedItemPosition = 0;
SnakeShape snakeShape = SnakeShape.indicator;
bool showSelectedLabels = false;
bool showUnselectedLabels = false;
Color selectedColor = Colors.black26;
Color unselectedColor = Colors.black26;
Color? containerColor = Colors.black26;
Color containerColors = Colors.black26;
final TextEditingController searchController =
TextEditingController(text: "");
final RxBool isEmpty1 = true.obs;
final RxString text = searchController.text.obs;

class _MainNavState extends State<MainNav> {
  int selectedIndex;
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    AddGame(),
    OrdersPage(),
    ChooseGame(),
  ];

  _MainNavState(this.selectedIndex);

  @override
  Widget build(BuildContext context) {
    final TextEditingController searchController =
    TextEditingController(text: "");
    final RxBool isEmpty1 = true.obs;
    final RxString text = searchController.text.obs;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colorsapp.bgColor,
        elevation: 0,
        actions: [
          Builder(
            builder: (context) => Padding(
              padding: const EdgeInsets.only(right: 30),
              child: IconButton(
                icon: Icon(
                  Icons.menu,
                  color:Colors.black,
                  size: 50,
                ),
                onPressed: () => Scaffold.of(context).openEndDrawer(),
              ),
            ),
          ),
        ],
      ),
      endDrawer: Navbar(),
      body: SafeArea(child: _widgetOptions[selectedIndex]),
      bottomNavigationBar: SnakeNavigationBar.color(
        height: 0,
        behaviour: SnakeBarBehaviour.floating,
        snakeShape: SnakeShape.indicator,
        snakeViewColor:Colors.black26,
        shape: bottomBarShape,
        elevation: 50,
        padding: padding,
        shadowColor: Colors.green,
        backgroundColor:Colors.black,
        unselectedItemColor: unselectedColor,
        showUnselectedLabels: showUnselectedLabels,
        showSelectedLabels: showSelectedLabels,
        currentIndex: selectedIndex,
        onTap: (index) => setState(() {
          selectedIndex = index;
          print(index);
          switch (index) {
            case 0:
              print("_selectedIndex=> ${selectedIndex}");
              print("_selectedIndex=> ${_widgetOptions[selectedIndex]}");
              break;
            case 1:
              print("_selectedIndex=> ${selectedIndex}");
              print("_selectedIndex=> ${_widgetOptions[selectedIndex]}");
              break;
            case 2:
              print("_selectedIndex=> ${selectedIndex}");
              print("_selectedIndex=> ${_widgetOptions[selectedIndex]}");
              break;
            case 3:
              print("_selectedIndex=> ${selectedIndex}");
              print("_selectedIndex=> ${_widgetOptions[selectedIndex]}");
              break;
          }
        }),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home_filled,
              size: 26,
            ),
            label: 'home',
          ),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.favorite,
                size: 26,
              ),
              label: 'favorite'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.search,
                size: 36,
              ),
              label: 'search'),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart_outlined), label: 'prodects'),
        ]
      ),
    );
  }
}
