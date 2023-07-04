import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.lightGreen),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: "Food Recipes"),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    var ekranbilgisi= MediaQuery.of(context);
    final double ekranyuksekligi =ekranbilgisi.size.height;
    final double ekrangenisligi =ekranbilgisi.size.width;

    
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: SingleChildScrollView(
        child: Column (
          children: [
          SizedBox(
            width: ekrangenisligi,
              child: Image.asset("resimler/kuskus-salatasi.jpg")
          ),
            Row(
              children: [
               Expanded(
                 child: SizedBox(
                   height: ekrangenisligi/8,
                   child: ElevatedButton(
                      child: Yazi("Like",ekrangenisligi/25),
                     onPressed: (){
                        print("Liked");
                     },
                     style: ElevatedButton.styleFrom(onPrimary: Colors.white,backgroundColor: Colors.lime),
                    ),
                 ),
               ),
                Expanded(
                  child: Padding(
                    padding:  EdgeInsets.all(ekrangenisligi/50 ),
                    child: SizedBox(
                      height: ekrangenisligi/8,
                      child: ElevatedButton(
                        child: Yazi("Comment",ekrangenisligi/25),
                        onPressed: (){
                          print("comment has been made");
                        },
                        style: ElevatedButton.styleFrom(onPrimary: Colors.white,backgroundColor: Colors.lime),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding:EdgeInsets.all(ekranyuksekligi/100),
              child: Column(
                children: [
                  Text("Cuscous Salad ",
                    style: TextStyle(
                      color: Colors.indigoAccent,
                      fontWeight: FontWeight.bold,
                      fontSize: ekrangenisligi/20,
                    ),
                  ),
                  Row(
                    children: [
                      Yazi("This salad is ready in 20 minutes",ekrangenisligi/25),
                      Spacer(),
                      Yazi("January 7",ekrangenisligi/25),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding:  EdgeInsets.all(ekranyuksekligi/100),
              child: Yazi("Preheat the skillet over medium heat."
                  " Generously butter one side of a slice of bread."
                  " Place bread butter-side-down onto the skillet bottom and add 1 slice of cheese. "
                  "Butter a second slice of bread on one side and place butter-side-up on top of the sandwich. Grill until lightly browned and flip over; continue grilling until cheese is melted."
                  " Repeat with the remaining 2 slices of bread, butter, and a slice of cheese.", ekrangenisligi/25),
            ),
          ],
        ),
      ),
    );
  }
}
class Yazi extends StatelessWidget {
  String icerik;
  double YaziBoyut;
  Yazi(this.icerik,this.YaziBoyut);

  @override
  Widget build(BuildContext context) {
    return Text(icerik,style: TextStyle (fontSize: YaziBoyut));
  }
}

