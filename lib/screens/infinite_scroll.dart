import 'package:componentesnews/theme/app_theme.dart';
import 'package:flutter/material.dart';

class InfiniteScrollScreen extends StatefulWidget {
   
  const InfiniteScrollScreen({Key? key}) : super(key: key);

  @override
  State<InfiniteScrollScreen> createState() => _InfiniteScrollScreenState();
}

class _InfiniteScrollScreenState extends State<InfiniteScrollScreen> {
  
  final List<int> imagesIds = [1,2,3,4,5,6,7,8,9,10];
  final ScrollController scrollController = ScrollController();
   bool isLoading = false;
  
  @override
  void initState() {
    super.initState();
    
    //Crear listener del scroll
    scrollController.addListener(() {
      //print('actual: ${scrollController.position.pixels}, max: ${scrollController.position.maxScrollExtent}');
   
       //Si esta carca del final, llamar el metodo para agregar 5 mas  
      if((scrollController.position.pixels + 500) > scrollController.position.maxScrollExtent) {
        fetchData();
      }
    });  

  }

  Future fetchData() async {

    // Si esta cargando, no hacer nada
    if(isLoading) return; 

    //Cambiar el valor para indicar que se esta cargando. setState para que refresque el valor
    isLoading = true;
    setState(() {});

    //Simular un tiempo de espera, como si fuera un petición http
    await Future.delayed(const Duration(seconds:  3));

    //Agregar las nuevas imagenes
    add5();

    //regresar a false y refrescar el cambio
    isLoading = false;
    setState(() {
      
    });

  }

  void add5(){

    final lastID = imagesIds.last;

    imagesIds.addAll(
      //se indica que se agregaran 5 nuevos elementos, se iteran ese nuevos elementos para asignar el valor
      [1,2,3,4,5].map((e) => lastID + e)
    );

    setState(() {
      
    });

  }


  @override
  Widget build(BuildContext context) {

    //Obtener el tamaño del dispositivo
    final size = MediaQuery.of(context).size;

    return  Scaffold(
      //MediaQuery es mas para los dispositivos que tienen un notch. Para quitar el notch y se muestre a full
      body: MediaQuery.removePadding(
        context: context,
        removeTop: true,
        removeBottom: true,

        child: Stack(
          children: [
            ListView.builder(
              physics: const BouncingScrollPhysics(), // para agregar un efecto como el de ios al llegar al final del scroll
              controller: scrollController,
              itemCount: imagesIds.length,
              itemBuilder: (BuildContext context, int index) {  
                return FadeInImage(
                    placeholder: const AssetImage('lib/assets/jar-loading.gif'), 
                    // image: NetworkImage('https://picsum.photos/500/300?image=${index+1}'),
                      image: NetworkImage('https://picsum.photos/500/300?image=${imagesIds[index]}'),
                    width: 250,
                    height: 250,
                    fit: BoxFit.cover,
  
                );
              },
              
            ),

            //Ubicar un widget en el Stack
            Positioned(
               child: const _LoadingIcon(),
               bottom: 40,
               //se restan 30 porque _LoadingIcon hay un with de 60 y de no restarse es como si
               //el widget se comenzara a mostrar a la mitda + ese with de 60
               left: size.width * 0.5 - 30, 
            ), 

          ],
        ),
      )
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
      height: 60,
      width:  60,
      decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.9) ,
                      shape: BoxShape.circle
      ),
      child: const CircularProgressIndicator( color: AppTheme.primary,),
    );
  }
}