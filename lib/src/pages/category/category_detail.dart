import 'package:flutter/material.dart';

final Color red = Colors.red;

class CategoryDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData.light().copyWith(scaffoldBackgroundColor: red),
        debugShowCheckedModeBanner: false,
        home: Scaffold(body: Center(child: AnimatedHeader())));
  }
}

class AnimatedHeader extends StatefulWidget {
  AnimatedHeaderState createState() => AnimatedHeaderState();
}

class AnimatedHeaderState extends State<AnimatedHeader> {
  Image backgroundImage() {
    return Image.network(
      "https://image.freepik.com/free-vector/top-view-restaurant-table-with-flat-design_23-2147902285.jpg",
      fit: BoxFit.cover,
    );
  }

  Card listCard(int index) {
    return Card(
      elevation: 7,
      margin: EdgeInsets.only(left: 10, right: 10, top: 10),
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
        child: Text("Item $index"),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            pinned: true,
            snap: false,
            floating: false,
            expandedHeight: 200.0,
            elevation: 50,
            backgroundColor: red,
            flexibleSpace: FlexibleSpaceBar(
              centerTitle: true,
              title: Text(
                'Restaurantes de esta Categoría',
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              background: backgroundImage(),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                return listCard(index);
              },
            ),
          )
        ],
      ),
    );
  }
}
