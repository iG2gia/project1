import 'package:app0/kids/product/kids.dart';
import 'package:app0/sign_in/login.dart';
import 'package:app0/women/product/women.dart';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

import '../cart/cart_page.dart';
import '../favorite/favorite.dart';
import '../men/product/men.dart';
import '../search/custom_search_delegate.dart';
import 'first_view.dart';
import 'home.dart';

class App1 extends StatefulWidget {
  @override
  _App1State createState() => _App1State();
}

class _App1State extends State<App1> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: DefaultTabController(
        length: 4,
        child: SafeArea(
          child: Scaffold(
            appBar: PreferredSize(
              preferredSize: const Size.fromHeight(80.0),
              child: AppBar(
                elevation: 0.0,
                leading: Builder(
                  builder: (context) => // Ensure Scaffold is in context
                      Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: IconButton(
                        icon: Icon(
                          FontAwesomeIcons.bars,
                          color: Colors.black,
                        ),
                        onPressed: () => Scaffold.of(context).openDrawer()),
                  ),
                ),
                backgroundColor: Color(0xFFFCFCFC),
                flexibleSpace: Container(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 40.0),
                            child: Row(
                              children: [
                                IconButton(
                                  icon: Icon(
                                    FontAwesomeIcons.user,
                                  ),
                                  onPressed: () {
                                    Get.to(SignIn());
                                  },
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 8),
                            child: Text(
                              'IG',
                              style: TextStyle(
                                fontFamily: 'fasthand',
                                fontSize: 40.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Row(
                            children: [
                              IconButton(
                                icon: Icon(
                                  FontAwesomeIcons.cartShopping,
                                ),
                                onPressed: () {},
                              ),
                              IconButton(
                                onPressed: () {
                                  // method to show the search bar
                                  showSearch(
                                    context: context,
                                    // delegate to customize the search bar
                                    delegate: CustomSearchDelegate(),
                                  );
                                },
                                icon: Icon(
                                  FontAwesomeIcons.magnifyingGlass,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            drawerEnableOpenDragGesture: false,
            drawer: Drawer(
              child: ListView(
                children: <Widget>[
                  UserAccountsDrawerHeader(
                    accountName: Text(
                      'kadf,k',
                      style: TextStyle(color: Colors.white),
                    ),
                    accountEmail: Text('a,fnazl,k',
                        style: TextStyle(color: Colors.white)),
                    currentAccountPicture: GestureDetector(
                      child: CircleAvatar(
                        backgroundColor: Color(0xFFFCFCFC),
                        child: Icon(
                          FontAwesomeIcons.user,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    decoration: BoxDecoration(color: Colors.black),
                  ),
                  InkWell(
                    onTap: () {
                      Get.to(Home());
                    },
                    child: ListTile(
                        title: Text('Home page'),
                        leading: Icon(
                          FontAwesomeIcons.house,
                          color: Colors.black,
                        )),
                  ),
                  InkWell(
                    onTap: () {
                      Get.to(SignIn());
                    },
                    child: ListTile(
                        title: Text('My account'),
                        leading: Icon(
                          FontAwesomeIcons.user,
                          color: Colors.black,
                        )),
                  ),
                  InkWell(
                    onTap: () {
                      Get.to(Cartpage());
                    },
                    child: ListTile(
                        title: Text('My orders'),
                        leading: Icon(
                          FontAwesomeIcons.basketShopping,
                          color: Colors.black,
                        )),
                  ),
                  InkWell(
                    onTap: () {
                      Get.to(Favorite());
                    },
                    child: ListTile(
                        title: Text('My favorites'),
                        leading: Icon(
                          FontAwesomeIcons.heart,
                          color: Colors.black,
                        )),
                  )
                ],
              ),
            ),
            body: Column(children: [
              Container(
                alignment: Alignment.center,
                height: 40.0,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.2), // Shadow color
                      spreadRadius: 2,
                      blurRadius: 5,
                      offset: Offset(0, 3), // Offset in the y-direction
                    ),
                  ],
                  color: Color(0xFFFCFCFC),
                ),
                child: TabBar(
                  labelColor: Colors.white,
                  unselectedLabelColor: Colors.black,
                  labelStyle: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                  ),
                  tabs: [
                    Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            border: Border.all(color: Colors.black, width: 1)),
                        child: Tab(text: 'Home')),
                    Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            border: Border.all(color: Colors.black, width: 1)),
                        child: Tab(text: 'Men')),
                    Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            border: Border.all(color: Colors.black, width: 1)),
                        child: Tab(text: 'Women')),
                    Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            border: Border.all(color: Colors.black, width: 1)),
                        child: Tab(text: 'Kids')),
                  ],
                  indicator: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Colors
                        .black, // Change this color to the desired active tab color
                  ),
                ),
              ),
              Expanded(
                child: TabBarView(
                  children: [
                    First(),
                    Men(),
                    Women(),
                    Kids(),
                  ],
                ),
              ),
            ]),
            backgroundColor: Color(0xFFFCFCFC),
          ),
        ),
      ),
    );
  }
}
