import 'package:flutter/material.dart';
import 'package:untitled6/styles/dimens.dart';

class FindFoodMonkey extends StatefulWidget {
  const FindFoodMonkey({Key? key}) : super(key: key);

  @override
  _FindFoodMonkeyState createState() => _FindFoodMonkeyState();
}

class _FindFoodMonkeyState extends State<FindFoodMonkey> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body:
      Container(margin: EdgeInsets.symmetric(vertical: xlargeSize(context),horizontal: xlargeSize(context)),
        child: Column(
          children: [
Image.asset("assets/FindFood.png",width: 200,height: 200),
            Container(margin: EdgeInsets.symmetric(vertical:smallSize(context)),alignment:Alignment.center ,
                child: Text("Find Food You Love",textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.w900,fontSize:30), )),
            Container(margin: EdgeInsets.only(bottom: xxlargeSize(context),top: xlargeSize(context)),
                child: Text("Discover the best foods from over 1000 \n restaurants and fast delivery to your \n doorstep",textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.w400,fontSize:20,color: Colors.grey))),
            Container(margin: EdgeInsets.only(bottom: mediumSize(context)),
              child: SizedBox(width: fullWidth(context),height: 50,child: ElevatedButton(onPressed: () {} ,child: Text("Next"),style: ElevatedButton.styleFrom(primary: Colors.deepOrange,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(35))), )),),
      ]
        ),
      ),
    );
  }
}
