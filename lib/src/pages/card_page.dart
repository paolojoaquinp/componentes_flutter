import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
    
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Card')
      ),
      body: ListView(
/*         padding: EdgeInsets.symmetric(horizontal: 50.0, vertical: 10.0), */
        padding: EdgeInsets.all(10),
        children: <Widget>[
          _cardTipo1(),
          SizedBox(height: 30.0,),
          _cardTipo2(),
          SizedBox(height: 30.0,),
          _cardTipo1(),
          SizedBox(height: 30.0,),
          _cardTipo2(),
          SizedBox(height: 30.0,),
          _cardTipo1(),
          SizedBox(height: 30.0,),
          _cardTipo2(),
          SizedBox(height: 30.0,),
          _cardTipo1(),
          SizedBox(height: 30.0,),
          _cardTipo2(),
          SizedBox(height: 30.0,),
        ],
      ),
    );
  }
  
  final ButtonStyle flatButtonStyle = TextButton.styleFrom(
    minimumSize: Size(88, 36),
    padding: EdgeInsets.symmetric(horizontal: 16.0),
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(2.0)),
    ),
  );


  Widget _cardTipo1() {
    return Card(
      elevation: 10.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      child: Column(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.photo_album, color: Colors.blue),
            title: Text('Soy el titulo de esta tarjeta'),
            subtitle: Text('Aqui estamos con la description de la tarjeta que quiero que ustedes vean una idea de lo que quiero mostrarles.'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              TextButton(
                style: flatButtonStyle,
                child: Text('Cancelar'),
                onPressed: () {},
              ),
              TextButton(
                style: flatButtonStyle,
                child: Text('Ok'),
                onPressed: () {},
              )
            ],
          )
        ],
      )
    );
  }
  
  Widget _cardTipo2() {
    final card = Container(
/*       clipBehavior: Clip.antiAlias, */
      child: Column(
        children: <Widget>[
          FadeInImage(
            image: NetworkImage('https://www.amateurphotographer.co.uk/wp-content/uploads/2022/03/Landscape-South-Island-New-Zealand-820x500.jpg'),
            placeholder: AssetImage('assets/jar-loading.gif'),
            fadeInDuration: Duration(milliseconds: 200), 
            height: 300.0,
            fit: BoxFit.cover,
          ),
/*           Image(
            image: NetworkImage('https://www.amateurphotographer.co.uk/wp-content/uploads/2022/03/Landscape-South-Island-New-Zealand-820x500.jpg'),
          ), */
          Container(
            padding: EdgeInsets.all(10.0),
            child: Text('No tengo idea de que poner')
          )
        ],
      )
    );
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30.0),
        color: Colors.white,
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.black26,
            blurRadius: 10.0,
            spreadRadius: 2.0,
            offset: Offset(2.0,10.0)
          )
        ]
/*         color: Colors.red */
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30.0),
        child: card
      ),
    );
  }
}