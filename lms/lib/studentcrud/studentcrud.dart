
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:lms/studentcrud/studenteditadd.dart';
class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
   Future getData()async{
    var url = 'http://192.168.1.158/lmsserver/userstudentcrud/read.php';
    var response = await http.get(Uri.parse(url));
    return json.decode(response.body);
  }


  @override
  void initState() {
    super.initState();

  }
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text('Php Mysql Crud Students'),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => AddEditPageStudent(),),);
          debugPrint('Clicked FloatingActionButton Button');
        },
      ),
      body: FutureBuilder(
        future: getData(),
        builder: (context,snapshot){
          if(snapshot.hasError) print(snapshot.error);
          return snapshot.hasData
              ? ListView.builder(
              itemCount: snapshot.data.length,
              itemBuilder: (context,index){
                List list = snapshot.data;
                return ListTile(
                  leading: GestureDetector(child: Icon(Icons.edit),
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => AddEditPageStudent(list: list,index: index,),),);
                    debugPrint('Edit Clicked');
                  },),
                  title: Text(list[index]['name']),
                  subtitle: Text(list[index]['email']),
                  trailing: GestureDetector(child: Icon(Icons.delete),
                    onTap: (){
                      setState(() {
                        var url = 'http://192.168.1.158/lmsserver/userstudentcrud/delete.php';
                        http.post(Uri.parse(url),body: {
                          'id' : list[index]['id'],
                        });
                      });
                      debugPrint('delete Clicked');
                    },),
                );
              }
          )
              : CircularProgressIndicator();
        },
      ),
    );
  }
}