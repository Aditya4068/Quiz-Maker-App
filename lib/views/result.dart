import 'package:flutter/material.dart';
import 'package:quiz_maker/widgets/widgets.dart';

class Results extends StatefulWidget {
  final int correct, incorrect, total;
  const Results(
      {@required this.correct, @required this.incorrect, @required this.total});

  @override
  _ResultsState createState() => _ResultsState();
}

class _ResultsState extends State<Results> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Container(
        padding: EdgeInsets.all(10),
        height: MediaQuery.of(context).size.height,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "Your Score:",
                style: TextStyle(fontSize: 25, color: Colors.white),
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                "${widget.correct}/${widget.total}",
                style: TextStyle(
                    fontSize: 55,
                    fontWeight: FontWeight.w900,
                    color: Colors.white),
              ),
              SizedBox(
                height: 18,
              ),
              Text(
                "Correct Answers\n${widget.correct}\nIncorrect Answers\n${widget.incorrect}\nNot Attempted\n${widget.total - widget.correct - widget.incorrect}",
                style: TextStyle(
                  fontSize: 20,
                  color: Color.fromARGB(255, 255, 255, 255),
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: whiteButton(
                  context: context,
                  label: "Go to Home",
                  buttonWidth: MediaQuery.of(context).size.width / 2,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
