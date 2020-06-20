import 'package:flutter/material.dart';
import 'quote.dart';


void main() {
  runApp(MaterialApp(
    home:QuoteList(),
  ),
  );
}


class QuoteList extends StatefulWidget {
  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {

  List<Quote> quotes = [
    Quote(author: "Oscar wilde", text: "Be yourself everyone else is already takem"),
    Quote(author: "Oscar wilde", text: "I have nothing to declare except my genius."),
    Quote(author: "Oscar wilde", text: "We are all in the gutter, but some of us are looking at the stars.")
  ];

  Widget quoteTemplate(quote){
    return Card(
      margin: EdgeInsets.fromLTRB(16, 16, 16, 0),
      child: Padding(
        padding: const EdgeInsets.all(12.0),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
                quote.text,style: TextStyle(
              fontSize: 18.0,
              color: Colors.grey[600],
            ),
            ),
            SizedBox(
              height: 6.0,
            ),
            Text(
              quote.author, style: TextStyle(
                fontSize: 14,
                color: Colors.grey[800],
            ),
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text("Awesome Quotes"),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        children: quotes.map((quote) {
          return quoteTemplate(quote);
        }).toList(),
      ),
    );
  }
}
