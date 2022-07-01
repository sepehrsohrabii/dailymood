import 'package:flutter/material.dart';

class Tabs extends StatefulWidget {
  const Tabs({Key? key}) : super(key: key);

  @override
  State<Tabs> createState() => _Tabs();
}

class _Tabs extends State<Tabs> {
  final PageController _myPage = PageController(initialPage: 0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        child: SizedBox(
          height: 75,
          child:  Padding(
            padding: const EdgeInsets.only(left: 32.0, right: 32.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                IconButton(
                  iconSize: 30.0,
                  icon: const Icon(Icons.home),
                  onPressed: () {
                    setState(() {
                      _myPage.jumpToPage(1);
                    });
                  },
                ),
                IconButton(
                  iconSize: 30.0,
                  icon: const Icon(Icons.search),
                  onPressed: () {
                    setState(() {
                      _myPage.jumpToPage(2);
                    });
                  },
                ),
                const SizedBox(
                  width: 25,
                ),
                IconButton(
                  iconSize: 30.0,
                  icon: const Icon(Icons.notifications),
                  onPressed: () {
                    setState(() {
                      _myPage.jumpToPage(3);
                    });
                  },
                ),
                IconButton(
                  iconSize: 30.0,
                  icon: const Icon(Icons.list),
                  onPressed: () {
                    setState(() {
                      _myPage.jumpToPage(4);
                    });
                  },
                )
              ],
            ),
          ),

        ),
      ),
      body: PageView(
        controller: _myPage,
        onPageChanged: (pageNumber) {
          print('Page Changes to index $pageNumber');
        },
        physics: const NeverScrollableScrollPhysics(),
        children: const <Widget>[
          Center(
            child: Text('main page'),
          ),
          Center(
            child: Text('Empty Body 0'),
          ),
          Center(
            child: Text('Empty Body 1'),
          ),
          Center(
            child: Text('Empty Body 2'),
          ),
          Center(
            child: Text('Empty Body 3'),
          )
        ], // Comment this if you need to use Swipe.
      ),
      floatingActionButton: SizedBox(
        height: 65.0,
        width: 65.0,
        child: FittedBox(
          child: FloatingActionButton(
            onPressed: () {
              setState(() {
                _myPage.jumpToPage(0);
              });
            },
            child: const Icon(
              Icons.add,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}