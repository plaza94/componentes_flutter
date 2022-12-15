import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class CustomCardType2 extends StatelessWidget {
  const CustomCardType2({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias, //obligar a que no se salga los hijos
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20)), //crea un borde redondeado
      elevation: 50, //crea una elevacion en la tarjeta
      shadowColor: AppTheme.primary.withOpacity(
          0.5), //cambia color de la sombra y la opacidad de esta misma
      child: Column(
        children: [
          const FadeInImage(
            image: NetworkImage(
                'https://i.pinimg.com/564x/b7/e2/66/b7e266025c0484e2c22f60e049aa7aac.jpg'),
            placeholder: AssetImage(
                'assets/jar-loading-dark.gif'), //imagen cuando esta aun no carga (gif)
            width: double
                .infinity, //que el ancho sea completo osea del anchio de la tarjeta
            height: 230,
            fit: BoxFit.cover, // que la imagen se adapte a la tarjeta
            fadeInDuration:
                Duration(milliseconds: 300), //duracion del placeholder
          ),
          Container(
              alignment: AlignmentDirectional
                  .centerEnd, //posicion del texto de la tarjeta en el container
              padding: const EdgeInsets.only(
                  right: 20,
                  top: 10,
                  bottom: 10), // el espacio del texto con respecto al container
              child: const Text('Tunning Car Pinterest'))
        ],
      ),
    );
  }
}
