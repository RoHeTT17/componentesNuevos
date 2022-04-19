import 'package:componentesnews/theme/app_theme.dart';
import 'package:flutter/material.dart';

class SliderScreen extends StatefulWidget {
   
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
 
  double _sliderValue = 50;
  bool   _enbleSlider = true;
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text('Slider && Switchs'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          
              Slider.adaptive(
                min: 15,
                max: 400,
                activeColor: AppTheme.primary,
                value: _sliderValue,
                onChanged: _enbleSlider
                ? (value){
                    _sliderValue = value;  
                    setState(() { });
                  }
                : null  
              ),
              
              CheckboxListTile(
                title: const Text('¿Activar Slider?'),
                value: _enbleSlider, 
                onChanged: (value){
                    setState(() {
                    _enbleSlider = value ?? true;
                    });
                }
              ),

              SwitchListTile.adaptive(
                title: const Text('¿Activar Slider?'),
                value: _enbleSlider, 
                onChanged: (value){
                    setState(() {
                    _enbleSlider = value;
                    });
                }
              ),      

              const AboutListTile(),        

              Expanded(
                child: SingleChildScrollView(
                  child: Image(
                    image: const NetworkImage('https://i.pinimg.com/736x/7a/4b/e4/7a4be418c88468f352a7f63f0ab61f14.jpg'),
                    width: _sliderValue,
                    fit: BoxFit.contain,
                    ),

                  
                ),
              )

        ],
      ),
    );
  }
}