// TextEditingController nome = TextEditingController();
//   TextEditingController sobrenome = TextEditingController();

//   int _selectedIndex = 0;
//   static const TextStyle optionStyle =
//   TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
//   final List<Widget> _widgetOptions = <Widget>[
//     const MyApp(),
//     Nova(),
//   ];

//   void _onItemTapped(int index) {
//     setState(() {
//       _selectedIndex = index;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Dados'),
//         backgroundColor: Colors.indigoAccent,
//       ),
//       bottomNavigationBar: BottomNavigationBar(
//         items: const <BottomNavigationBarItem>[
//           BottomNavigationBarItem(
//             icon: Icon(Icons.home_max),
//             label: 'Inicio',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.business),
//             label: 'Pessoas',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.school),
//             label: 'Configurações',
//           ),
//         ],
//         currentIndex: _selectedIndex,
//         selectedItemColor: Colors.amber[800],
//         onTap: _onItemTapped,
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Form(
//           key: _formKey,
//           child: Column(
//             children: <Widget>[
//               TextFormField(
//                 controller: nome,
//                 decoration: const InputDecoration(
//                   labelText: 'Nome',
//                 ),
//                 validator: (value) {
//                   if (value == null || value.isEmpty) {
//                     return 'Por favor, insira o seu nome';
//                   }
//                   return null;
//                 },
//               ),
//               TextFormField(
//                 controller: sobrenome,
//                 decoration: const InputDecoration(
//                   labelText: 'Sobrenome',
//                 ),
//                 validator: (value) {
//                   if (value == null || value.isEmpty) {
//                     return 'Por favor, insira o seu sobrenome';
//                   }
//                   return null;
//                 },
//               ),
//               const SizedBox(height: 10,width: 50),
//               ElevatedButton(
//                 onPressed: () {

//                   /*if(_formKey.currentState!.validate()) {
//                     print("${nome.text} - ${sobrenome.text}");
//                   }*/

//                   Navigator.push(context, MaterialPageRoute(builder: (context) => Nova()));
//                 },
//               style: ElevatedButton.styleFrom(
//                 backgroundColor: Colors.cyan
//               ),
//                 child: const Text('Enviar'),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }