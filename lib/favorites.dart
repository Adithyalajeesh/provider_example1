import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'favorite/provider/favorite_provider.dart';

class Favorites extends StatelessWidget {
  const Favorites({super.key});

  @override
  Widget build(BuildContext context) {
    final provider=Provider.of<favoriteProvider>(context);
    final words=provider.words;
    return Scaffold(
      appBar: AppBar(
        title: Text('Favorites'),
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
    );
  }
}
