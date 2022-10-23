import 'package:fl_components/themes/app_theme.dart';
import 'package:flutter/material.dart';

class ListViewBuilderScreen extends StatefulWidget {
   
  const ListViewBuilderScreen({Key? key}) : super(key: key);

  @override
  State<ListViewBuilderScreen> createState() => _ListViewBuilderScreenState();
}

class _ListViewBuilderScreenState extends State<ListViewBuilderScreen> {

  final List<int> imagesIds = [1,2,3,4,5,6,7,8,9,10];
  final ScrollController scrollController = ScrollController();
  bool isLoading = false;

  @override
  void initState() {
    super.initState();
    scrollController.addListener(() { 
      //print('${scrollController.position.pixels}, ${scrollController.position.maxScrollExtent}');
      if((scrollController.position.pixels + 500 ) >= scrollController.position.maxScrollExtent){
        //addFiveElement();
        fechData();
      }
    }) ; 
  }

  Future fechData() async{
    if( isLoading ) return;
    isLoading = true;
    setState(() {});

    await Future.delayed(const Duration(seconds: 3));

    addFiveElement();
    isLoading = false;
    setState(() {});

    if(scrollController.position.pixels + 100 <= scrollController.position.maxScrollExtent) return;//No haga nada sino está al final del scroll

    scrollController.animateTo(
      //offset es la posición en la que arranca
      scrollController.position.pixels +120,        
      duration: const Duration(milliseconds: 300), 
      curve: Curves.fastOutSlowIn
    );

  }

  void addFiveElement(){
    final lastId = imagesIds.last;
    imagesIds.addAll([1,2,3,4,5].map((e) => lastId + e));//Iterable)
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size; //Esto me da información del ancho y el alto de la pantalla en la que se está trabajando

    return Scaffold(
      body: MediaQuery.removePadding(
        context: context,
        removeTop: true,
        removeBottom: true,
        child: Stack(

          children: [
            ListView.builder(
              physics: const BouncingScrollPhysics(),
              controller: scrollController,
              itemCount: imagesIds.length,
              itemBuilder: (BuildContext context, int index) {
                return  FadeInImage(
                  placeholder: const AssetImage('assets/jar-loading.gif'), 
                  image: NetworkImage('https://picsum.photos/500/300?image=${ imagesIds[index] }'),
                  height: 230,
                  width: double.infinity,
                  fit: BoxFit.cover, 
                );
              },
            ),

            if(isLoading) //Note la sintaxis no usa las {}
              Positioned(
                bottom: 40,  
                left: size.width*0.5 - 35,
                child: const _LoadingIcon()
              )

            // const Positioned(
            //   child: Center(
            //     child: _LoadingIcon(),
            //   ),
            // )


          ],
        ),
      ),
    );
  }
}

class _LoadingIcon extends StatelessWidget {
  const _LoadingIcon({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.9),
        shape: BoxShape.circle 
      ),
      width: 70,
      height: 70,
      child: const CircularProgressIndicator(color: AppTheme.primary,),
    );
  }
}