import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultscoreg;
  final int resultscorer;
  final int resultscores;
  final int resultscoreh;
  final Function reset;

  Widget calc()
  {
    if (resultscoreg>resultscorer && resultscoreg>resultscoreh && resultscoreg>resultscores ) 
        return Text("Gryffindor");
    
        else if(resultscorer>resultscoreg && resultscorer>resultscoreh && resultscorer>resultscores)
        return Text("Ravenclaw");

        else if(resultscoreh>resultscoreg && resultscoreh>resultscorer && resultscoreh>resultscores)
        return Text("Hufflepuff");
          else
            return Text("Slytherin");
    }
  
  Result(this.resultscoreg,this.resultscorer,this.resultscores,this.resultscoreh, this.reset);
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(children: <Widget>[
          calc(),
          
      Text(
        "You Finished the Quiz",
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      FlatButton(
        child: Text("Restart"),
        onPressed: reset,
      )
    ]));
  }
}
