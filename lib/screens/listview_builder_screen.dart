import 'package:flutter/material.dart';

class ListViewBuilderScreen extends StatelessWidget {
   
  const ListViewBuilderScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MediaQuery.removePadding(
        context: context,
        removeTop: true,
        removeBottom: true,
        child: ListView.builder(
          itemCount: 10,
          itemBuilder: (BuildContext context, int index) {
            return  FadeInImage(
              placeholder: const AssetImage('assets/jar-loading.gif'), 
              image: NetworkImage('https://picsum.photos/500/300?image=${index+1}'),
              height: 230,
              width: double.infinity,
              fit: BoxFit.cover, 
            );
          },
        ),
      ),
    );
  }
}