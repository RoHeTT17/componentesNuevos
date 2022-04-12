import 'package:flutter/material.dart';
import 'package:componentesnews/widgets/widgets.dart';

class CardScreen extends StatelessWidget {
   
  const CardScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('Card Widget'),
        centerTitle: true,
      ),
      body: ListView(
        padding:  const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        children: const [
             CardCustom(),
             SizedBox(height: 10,),
             Card2Custom(imageURL: 'https://static.vecteezy.com/system/resources/previews/000/246/312/original/mountain-lake-sunset-landscape-first-person-view-vector.jpg',),
             SizedBox(height: 20,),
             Card2Custom(imageURL: 'https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/3b632d69-96b5-4035-91c7-2f305e4dfc22/defzg55-e8b43271-db6a-4174-ab31-4e223add6691.jpg?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiJcL2ZcLzNiNjMyZDY5LTk2YjUtNDAzNS05MWM3LTJmMzA1ZTRkZmMyMlwvZGVmemc1NS1lOGI0MzI3MS1kYjZhLTQxNzQtYWIzMS00ZTIyM2FkZDY2OTEuanBnIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.bTbi_fKMDb_x_cKJp2RYR77kIF3LVn3ONUvYW2KiLQc',),
             SizedBox(height: 40,),
             Card2Custom(titleImg: 'One Piece',imageURL: 'https://i.pinimg.com/originals/33/0d/19/330d196bee09e5dfebdca4a0dc4fa4f2.jpg',),
           
        ],
      )
    );
  }
}
