import 'package:flutter/material.dart';
import 'search_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Unetei',
      theme: ThemeData(
          primaryColor: Colors.white, scaffoldBackgroundColor: Colors.white),
      home: const RootPage(),
    );
  }
}

class RootPage extends StatefulWidget {
  const RootPage({super.key});

  @override
  State<RootPage> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage>
    with SingleTickerProviderStateMixin {
  int vSelectedIndex = 0;
  int vTabIndex = 0;
  static late TabController _vTabController;

  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  List<Widget> vNavigations = <Widget>[
    const Text(
      'Index 0: Хайх',
      style: optionStyle,
    ),
    const Text(
      'Index 1: Таалагдсан',
      style: optionStyle,
    ),
    const Text(
      'Index 2: Шинэ зар',
      style: optionStyle,
    ),
    const Text(
      'Index 3: Миний зарууд',
      style: optionStyle,
    ),
  ];

  static const List<Tab> vTabTitles = <Tab>[
    Tab(
      icon: Icon(Icons.apps),
      text: 'Бүх ангилал',
    ),
    Tab(
      icon: Icon(Icons.shopping_bag),
      text: 'Хувцас хэрэглэл',
    ),
    Tab(
      icon: Icon(Icons.home),
      text: 'Үл хөдлөх',
    ),
    Tab(
      icon: Icon(Icons.car_rental),
      text: 'Автомашин',
    ),
    Tab(
      icon: Icon(Icons.work),
      text: 'Ажлын зар',
    ),
  ];

  static List<Widget> vTabItems = <Widget>[
    GridView.count(
      primary: false,
      padding: const EdgeInsets.only(left: 15.0, right: 15.0),
      crossAxisSpacing: 10,
      mainAxisSpacing: 0,
      crossAxisCount: 2,
      children: [
        SizedBox(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(5.0),
                child: Image.network(
                    'https://cdn1.unegui.mn/media/cache2/a8/28/a8281d47803e32c1e5793f4d469de6dd.jpg'),
              ),
              const Text(
                '200000',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text(
                'Panasonic 32 inch',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.normal,
                ),
              )
            ],
          ),
        ),
        SizedBox(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(5.0),
                child: Image.network(
                    'https://cdn1.unegui.mn/media/cache2/ed/b4/edb43b553b9701f60a07189d2057d220.jpg'),
              ),
              const Text(
                '80000',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text(
                'Pelnik,tsuv',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.normal,
                ),
              )
            ],
          ),
        ),
        SizedBox(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(5.0),
                child: Image.network(
                    'https://cdn1.unegui.mn/media/cache2/55/fa/55fab64ea03af6cb4978017f542b7b12.jpg'),
              ),
              const Text(
                '2 сая',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text(
                '2 өрөө, Замын цагдаа ард',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.normal,
                ),
              )
            ],
          ),
        ),
        SizedBox(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(5.0),
                child: Image.network(
                    'https://cdn1.unegui.mn/media/cache2/48/d3/48d32616b8e5f2a1aafe0894c12586d7.jpg'),
              ),
              const Text(
                '37 сая',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text(
                'Hummer H2, 2004/2008',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.normal,
                ),
              )
            ],
          ),
        ),
      ],
    ),
    SizedBox(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(
              'https://cdn1.unegui.mn/media/cache2/ed/b4/edb43b553b9701f60a07189d2057d220.jpg'),
          const Text(
            '80000',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Text(
            'Pelnik,tsuv',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.normal,
            ),
          )
        ],
      ),
    ),
    SizedBox(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(
              'https://cdn1.unegui.mn/media/cache2/55/fa/55fab64ea03af6cb4978017f542b7b12.jpg'),
          const Text(
            '2 сая',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Text(
            '2 өрөө, Замын цагдаа ард',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.normal,
            ),
          )
        ],
      ),
    ),
    SizedBox(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(
              'https://cdn1.unegui.mn/media/cache2/48/d3/48d32616b8e5f2a1aafe0894c12586d7.jpg'),
          const Text(
            '37 сая',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Text(
            'Hummer H2, 2004/2008',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.normal,
            ),
          )
        ],
      ),
    ),
    Text('T5'),
  ];

  @override
  void initState() {
    super.initState();
    _vTabController = TabController(length: vTabTitles.length, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _vTabController.dispose();
  }

  static List<PreferredSizeWidget> vAppBars = <PreferredSizeWidget>[
    SearchBar(pTabs: vTabTitles, pTabController: _vTabController),
  ];

  void _onItemTapped(int index) {
    setState(() {
      vSelectedIndex = index;
      debugPrint(vSelectedIndex.toString());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: vSelectedIndex == 0 ? vAppBars.elementAt(vSelectedIndex) : null,
      body: vSelectedIndex == 0
          ? TabBarView(
              controller: _vTabController,
              children: vTabItems,
            )
          : Center(
              child: vNavigations.elementAt(vSelectedIndex),
            ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Хайлт',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.star_border),
            label: 'Таалагдсан',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_circle_outline_outlined),
            label: 'Шинэ зар',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_4_outlined),
            label: 'Миний зар',
          ),
        ],
        currentIndex: vSelectedIndex,
        selectedItemColor: const Color(0xff45a911),
        onTap: _onItemTapped,
      ),
    );
  }
}
