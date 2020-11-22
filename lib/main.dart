import 'package:flutter/material.dart';
import 'quote.dart';
import 'quote_card.dart';

void main() {
  runApp(MaterialApp(
    home: QuoteList(),
  ));
}

class QuoteList extends StatefulWidget {
  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  //List of quotes
  List<Quote> quotes = [
    Quote(
        text:
            "Your time is limited, so don't waste it living someone else's life.",
        author: "author 1"),
    Quote(
        text:
            "Always do your best. What you plant now, you will harvest later.",
        author: "author 2"),
    Quote(
        text: "Action is the foundational key to all success.",
        author: "author 2"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Awsome Quotes'),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        children: quotes.map((quote) => QuoteCard(quote: quote)).toList(),
      ),
    );
  }
}
