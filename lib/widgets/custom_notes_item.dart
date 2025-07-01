import 'package:flutter/material.dart';

class CustomNotesItem extends StatelessWidget {
  const CustomNotesItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 18, bottom: 16, left: 16, ),
      decoration: BoxDecoration(
        color: Colors.orangeAccent,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ListTile(
            title: Padding(
              padding: const EdgeInsets.only(bottom: 8),
              child: Text('Flutter Tips', style: TextStyle(color: Colors.black,fontSize: 28)),
            ),
            subtitle: Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Text('Build your career with Hassan Nawishy  ', style: TextStyle(color: Colors.black.withOpacity(.5),fontSize: 16)),
            ),
            trailing: IconButton(onPressed: (){}, icon:const Icon(
              Icons.delete,color: Colors.black,size: 30,
            ),),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: Text('May 20,2025', style: TextStyle(color: Colors.black.withOpacity(.5),fontSize: 18)),
          ),
        ],
      ),
    );
  }
}
