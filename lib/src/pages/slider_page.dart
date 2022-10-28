import 'dart:ffi';

import 'package:flutter/material.dart';


class SliderPage extends StatefulWidget {
  const SliderPage({super.key});

  @override
  State<SliderPage> createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
  
  
  double _valorSlider = 100.0;
  bool _bloquearCheck = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Slider'),
      ),
      body: Container(
        padding: EdgeInsets.only(top: 50.0),
        child: Column(
          children: <Widget>[
            _crearSlider(),
            _checkBox(),
            _crearSwitch(),
            Expanded(
              child: _crearImagen()
            ),
          ],
        )
      ),
    );
  }
  
  Widget _crearSlider() {
    return Slider(
      activeColor: Colors.indigoAccent,
      divisions: 20,
      label: 'Tamaño de la imagen',
      value: _valorSlider,
      min: 10.0,
      max: 400.0,
      onChanged: (valor) {
        setState(() {
          _valorSlider = valor;        
        });
      },
    );
  }
  
  Widget _crearImagen() {
    return Image(
      image: NetworkImage('https://img2.rtve.es/i/?w=1600&i=1634549481357.jpg'),
      width: _valorSlider,
      fit: BoxFit.contain
    );
  }
  
  Widget _checkBox() {
    /* return Checkbox(
      value: _bloquearCheck, 
      onChanged: (_bloquearCheck) ? null : (value) {
          setState(() {
            _bloquearCheck = (value != null) ? value : _bloquearCheck;
          });
      }
    ); */
    return CheckboxListTile(
      title: Text('Bloquear slider'),
      value: _bloquearCheck, 
      onChanged: (_bloquearCheck) ? null : (value) {
          setState(() {
            _bloquearCheck = value as bool;
          });
      }
    );
  }
  
  Widget _crearSwitch() {
    return SwitchListTile(
      title: Text('Bloquear slider'),
      value: _bloquearCheck, 
      onChanged: (_bloquearCheck) ? null : (value) {
          setState(() {
            _bloquearCheck = value;
          });
      }
    );
  }
}