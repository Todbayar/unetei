import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SearchBar extends StatefulWidget implements PreferredSizeWidget {
  final int? pSearchCount;
  final String? pSearchText;
  final List<Tab>? pTabs;
  final TabController? pTabController;

  const SearchBar({
    super.key,
    this.pSearchCount = 14000,
    this.pSearchText,
    this.pTabs,
    this.pTabController,
  });

  @override
  State<SearchBar> createState() => _SearchBarState();

  @override
  Size get preferredSize => const Size.fromHeight(140);
}

class _SearchBarState extends State<SearchBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        elevation: 0,
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: Colors.white,
          statusBarIconBrightness: Brightness.dark, // For Android (dark icons)
          statusBarBrightness: Brightness.light, // For iOS (dark icons)
        ),
        backgroundColor: Colors.white,
        title: Container(
          width: double.infinity,
          height: 40.0,
          decoration: const BoxDecoration(
            color: Color(0xFFeeeeef),
            borderRadius: BorderRadius.all(Radius.circular(5)),
          ),
          child: Row(
            children: [
              Container(
                width: 24,
                height: 24,
                margin: const EdgeInsets.only(left: 5.0),
                child: const Icon(
                  Icons.search,
                  color: Color(0xFF8f8f92),
                  size: 20.0,
                ),
              ),
              Container(
                width: 240,
                height: 36,
                alignment: Alignment.centerLeft,
                margin: const EdgeInsets.only(left: 5.0),
                child: Text(
                  widget.pSearchText ?? '${widget.pSearchCount} зараас хайх',
                  textAlign: TextAlign.left,
                  style: const TextStyle(
                    color: Color(0xFF8f8f92),
                    fontSize: 16.0,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
            ],
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.filter_list),
            color: const Color(0xFF777777),
            iconSize: 24.0,
          ),
        ],
        bottom: TabBar(
          isScrollable: true,
          unselectedLabelColor: Colors.black,
          padding: const EdgeInsets.only(left: 15.0, right: 15.0),
          indicatorSize: TabBarIndicatorSize.tab,
          indicator: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: const Color(0xffeeeeef),
          ),
          controller: widget.pTabController,
          tabs: widget.pTabs!,
        ),
      ),
    );
  }
}
