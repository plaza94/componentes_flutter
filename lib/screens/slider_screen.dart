import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  double _sliderValue = 400;
  bool _sliderEnable = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Slider and Checks'),
        ),
        body: Column(
          children: [
            Slider.adaptive(
                min: 50,
                max: 400,
                activeColor: AppTheme.primary,
                //divisions: 10,
                value: _sliderValue,
                onChanged: _sliderEnable
                    ? (value) {
                        _sliderValue = value;
                        setState(() {});
                      }
                    : null),
            /*Checkbox(
                value: _sliderEnable,
                activeColor: AppTheme.primary,
                //para desavilitarlo debo ponerlo en null el onChanged
                onChanged: (value) {
                  _sliderEnable = value ?? true;
                  setState(() {});
                }),*/

            /* CheckboxListTile(
                value: _sliderEnable,
                title: const Text('Habilitar Slider'),
                activeColor: AppTheme.primary,
                onChanged: (value) {
                  _sliderEnable = value ?? true;
                  setState(() {});
                }),
            Switch(
                value: _sliderEnable,
                activeColor: AppTheme.primary,
                onChanged: (value) {
                  _sliderEnable = value ?? true;
                  setState(() {});
                }),*/
            SwitchListTile.adaptive(
                value: _sliderEnable,
                title: const Text('Habilitar Slider'),
                activeColor: AppTheme.primary,
                onChanged: (value) {
                  _sliderEnable = value ?? true;
                  setState(() {});
                }),
            const AboutListTile(), // descripcion de la aplicacion
            Expanded(
              child: SingleChildScrollView(
                child: Image(
                  image: const NetworkImage(
                      'https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/ac03a17e-589d-4ac1-952a-4185d1070994/deyiydp-5e331f5a-0761-47bc-8b36-5edd245fd022.png/v1/fill/w_1280,h_2184,strp/kitagawa_marin_render_by_minhchauk1k_deyiydp-fullview.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7ImhlaWdodCI6Ijw9MjE4NCIsInBhdGgiOiJcL2ZcL2FjMDNhMTdlLTU4OWQtNGFjMS05NTJhLTQxODVkMTA3MDk5NFwvZGV5aXlkcC01ZTMzMWY1YS0wNzYxLTQ3YmMtOGIzNi01ZWRkMjQ1ZmQwMjIucG5nIiwid2lkdGgiOiI8PTEyODAifV1dLCJhdWQiOlsidXJuOnNlcnZpY2U6aW1hZ2Uub3BlcmF0aW9ucyJdfQ.Egtygmtv-H59NQioLpw1YHAPa8dqflF7fKM3iTXqH9E'),
                  fit: BoxFit.contain,
                  width: _sliderValue,
                ),
              ),
            )
          ],
        ));
  }
}
