import 'package:flutter/material.dart';

class DataSearch extends SearchDelegate {
  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(icon: Icon(Icons.clear), onPressed: () => {query = ''})
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
        icon: AnimatedIcon(
            icon: AnimatedIcons.menu_arrow, progress: transitionAnimation),
        onPressed: () => {close(context, null)});
  }

  @override
  Widget buildResults(BuildContext context) {
    return Container();
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    if (query.isEmpty) {
      return Container();
    }

    return FutureBuilder(
      future: null,
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        if (snapshot.hasData) {
          final restaurants = snapshot.data;
          return ListView(
            children: restaurants.map((restaurant) {
              return ListTile(
                leading: FadeInImage(
                  image: NetworkImage(restaurant.getImg()),
                  width: 50.0,
                  fit: BoxFit.contain,
                ),
                title: Text(restaurant.RestaurantName),
                subtitle: Text(restaurant.RestaurantAddress),
                onTap: () => {
                  close(context, null),
                  restaurant.uniqueId = '',
                  Navigator.pushNamed(context, 'detalle', arguments: restaurant)
                },
              );
            }),
          );
        } else {
          return Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
