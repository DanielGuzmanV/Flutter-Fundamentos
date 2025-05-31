import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class InfiniteScrollScreen extends StatefulWidget {
  static const String nameclass = 'infinite_screen';

  const InfiniteScrollScreen({super.key});

  @override
  State<InfiniteScrollScreen> createState() => _InfiniteScrollScreenState();
}

class _InfiniteScrollScreenState extends State<InfiniteScrollScreen> {
  List<int> imagenId = [1,2,3,4,5];
  final ScrollController controlScroll = ScrollController();
  bool isLoading = false;
  bool isActiveLoading = true;

  // Preparamos la carga de imagenes:
  @override
  void initState() {
    super.initState();

    controlScroll.addListener( () {
      if((controlScroll.position.pixels + 500) >= controlScroll.position.maxScrollExtent){
        cargarSiguientePage();
      }
    });
  }

  // Cerramos la carga de imagenes:
  @override
  void dispose() {
    controlScroll.dispose();
    isActiveLoading = false;
    super.dispose();
  }

  // Funcion asincrona para cargar las imagenes:
  Future cargarSiguientePage() async {

    if(isLoading) return;
    isLoading = true;
    setState(() {});
    await Future.delayed(const Duration(seconds: 2));

    addImagesList();
    isLoading = false;

    if(!isActiveLoading) return;
    setState(() {});
  }

  // =====================================================

  // Metodo para agregar mas iD:
  void addImagesList() {
    final ultimoID = imagenId.last;
    
    imagenId.addAll(
      [1,2,3,4,5].map((value) => ultimoID + value)
    );
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('InfiniteScroll'),
      ),

      body: ListView.builder(
        controller: controlScroll,
        itemCount: imagenId.length,
        itemBuilder: (context, index) {
          return FadeInImage(
            fit: BoxFit.cover,
            width: double.infinity,
            height: 300,
            placeholder: const AssetImage('assets/images/jar-loading.gif'), 
            image: NetworkImage('https://picsum.photos/id/${imagenId[index]}/500/300')
          );
        },
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () => context.pop(),
        child: isLoading
        ? SpinPerfect(
            infinite: true,
            child: const Icon(Icons.refresh_rounded)
          )
        : FadeIn(child: const Icon(Icons.arrow_back_ios_new_outlined)),
      ),
    );
  }
}