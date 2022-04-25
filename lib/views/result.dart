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
      body: Container(
        padding: EdgeInsets.all(10),
        height: MediaQuery.of(context).size.height,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "Your Score:",
                style: TextStyle(fontSize: 25),
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                "${widget.correct}/${widget.total}",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.w900),
              ),
              SizedBox(
                height: 14,
              ),
              Text(
                "Correct Answers: ${widget.correct}\nIncorrect Answers: ${widget.incorrect}\nNot Attempted: ${widget.total - widget.correct - widget.incorrect}",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.grey,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 16,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: blueButton(
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
