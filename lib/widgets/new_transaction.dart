import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  final titleController = TextEditingController();
  final amountController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        child: Container(
          padding: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              TextField(
                decoration: InputDecoration(labelText: "Title"),
                controller: titleController,
                // onChanged: (val){
                //   titleInput = val;
                // },
              ),
              TextField(
                decoration: InputDecoration(labelText: "Amount"),
                controller: amountController,
                // onChanged: (val){
                //   amountInput = val;
                // }
              ),
              FlatButton(
                child: Text("Add Transaction"),
                textColor: Colors.purple,
                onPressed: () {
                  // print(titleInput);
                  // print(amountInput);
                  print(titleController.text);
                  print(amountController.text);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
