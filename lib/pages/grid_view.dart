import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter30days/domain/entity/list_data_entity.dart';



class GridViewBuilder extends StatelessWidget {
final data = ListEntity.listData;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
       gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2
       ),
        itemCount: data.length,
        itemBuilder: (context,index) {
         return Card(
           color: index==1?Colors.purple:Colors.green,
           child: Center(
             child: Column(
               children: [
              Container(height: 150,width: 150,child: Image.asset(data[index].image)),
             Text('${data[index].title}'),
               ],


             ),
           ),
         );
      },
      ),
    );
  }
}
