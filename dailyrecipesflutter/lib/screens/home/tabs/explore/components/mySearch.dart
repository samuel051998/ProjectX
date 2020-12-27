import 'package:flappy_search_bar/flappy_search_bar.dart';
import 'package:flappy_search_bar/search_bar_style.dart';
import 'package:flutter/material.dart';

class Post {
  final String title;
  final String description;

  Post(this.title, this.description);
}

class MySearch extends StatelessWidget {
  Future<List<Post>> search(String search) async {
    await Future.delayed(Duration(seconds: 1));
    if (search == "empty") return [];
    if (search == "error") throw Error();
    return List.generate(search.length, (int index) {
      return Post(
        "Title: $search $index",
        "Descritpion: $search $index",
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return SearchBar<Post>(
        searchBarStyle: SearchBarStyle(
          backgroundColor: Color(0xFFF1F1F1),
          padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 0.0),
          borderRadius: BorderRadius.circular(10),
        ),
        debounceDuration: Duration(milliseconds: 500),
        onSearch: search,
        onItemFound: (Post post, int index) {
          return ListTile(
            title: Text(post.title),
            subtitle: Text(post.description),
          );
        });
  }
}
