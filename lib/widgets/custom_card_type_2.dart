import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class CustomCardType2 extends StatelessWidget {
  final String imageURL;
  final String? name;

  const CustomCardType2({super.key, required this.imageURL, this.name});

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
          FadeInImage(
            image: NetworkImage(imageURL),
            placeholder: const AssetImage(
                'assets/jar-loading-dark.gif'), //imagen cuando esta aun no carga (gif)
            width: double
                .infinity, //que el ancho sea completo osea del anchio de la tarjeta
            height: 230,
            fit: BoxFit.cover, // que la imagen se adapte a la tarjeta
            fadeInDuration:
                const Duration(milliseconds: 300), //duracion del placeholder
          ),
          if (name != null)
            Container(
                alignment: AlignmentDirectional
                    .centerEnd, //posicion del texto de la tarjeta en el container
                padding: const EdgeInsets.only(
                    right: 20,
                    top: 10,
                    bottom:
                        10), // el espacio del texto con respecto al container
                child: Text(name ?? 'sin titulo'))
        ],
      ),
    );
  }
}
