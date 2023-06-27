import 'package:flutter/material.dart';
import 'package:confetti/confetti.dart';

class ConfettiReport extends StatefulWidget {
  const ConfettiReport({super.key});

  @override
  State<ConfettiReport> createState() => _ConfettiReportState();
}

class _ConfettiReportState extends State<ConfettiReport> {
  final confettiController = ConfettiController();

  @override
  void initState(){
    super.initState();

        confettiController.play();
  }

  @override
  void dispose(){
    confettiController.dispose();

        super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      height: 300,
      padding: EdgeInsets.all(25),
      margin: EdgeInsets.all(25),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        color: Colors.blueGrey[900],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [

          ConfettiWidget(

            confettiController: confettiController,
            shouldLoop: true,
            blastDirectionality: BlastDirectionality.explosive,
            // canvas: Size.fromWidth(200)
          ),

          SizedBox(height: 150,),
          Row(

            children: [
              Text('Report', style: TextStyle(fontSize: 24, color: Colors.white),),
              SizedBox(width: 10,),
              Text('Test', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),)
            ],
          ),

          Align(
            alignment: Alignment.bottomLeft,
            child: GestureDetector(
              onTap: () {},
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                // margin: EdgeInsets.all(25),
                // height: 10,
                // width: 10,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  color: Colors.blue[900],
                ),
                child: Text('test report', style: TextStyle(color: Colors.white),),
              ),
            ),
          )
        ],
      ),


    );
  }
}
