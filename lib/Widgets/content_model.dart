class UnboardingContent {
  String image;
  String title;
  String descripcion;
  UnboardingContent(
    {required this.descripcion, required this.image, required this.title} );
    
  }

  List<UnboardingContent> contents=[
    UnboardingContent(
    descripcion: 'Selecciona la bebida que quieras \nSolo con un clic', 
    image: "images/Botellas.png", 
    title: 'Elige entre todas las variedades \nque tenemos para ti'),

    UnboardingContent(
    descripcion: 'Puedes pagar en efectivo, \ntransferencia o con tarjeta', 
    image: "images/paymethod.png", 
    title: 'Facil y seguro'),

    UnboardingContent(
    descripcion: 'Envios a la puerta de tu casa \nen menos de 30 minutos ', 
    image: "images/delivey.png", 
    title: 'Entrega inmediata')
  ];
