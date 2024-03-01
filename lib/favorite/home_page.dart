import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'package:proprovider/favorite/provider/favorite_provider.dart';
import 'package:proprovider/favorites.dart';
import 'package:provider/provider.dart';
class HomePage extends StatelessWidget {
  const HomePage({Key? key});

  @override
  Widget build(BuildContext context) {
    final words=nouns.take(50).toList();
    final provider=Provider.of<favoriteProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('English Words'),
      ),
      body: ListView.builder(itemCount: words.length,
      itemBuilder: (context,index){
        final word= words[index];
        return ListTile(title: Text(word),
        trailing: IconButton(
          onPressed: (){
            provider.togglefvaorite(word);
          },
          icon: provider.isExist(word)
              ?Icon(Icons.favorite,color: Colors.red,)
              :Icon(Icons.favorite_border),

        ));
      },) ,
      floatingActionButton: FloatingActionButton(
        onPressed: (){
           Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Favorites()));

        },
        child: Icon(Icons.favorite)
      ),
    );
  }
}
