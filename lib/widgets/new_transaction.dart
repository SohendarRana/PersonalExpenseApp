import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  final Function addTX;
  final titleController = TextEditingController();
  final amountController = TextEditingController();

  NewTransaction(this.addTX);

  void submmitedData() {
    final enteredTitle = titleController.text;
    final enteredAmount = double.parse(amountController.text);

    if (enteredTitle.isEmpty || enteredAmount <= 0) {
      return;
    }

    addTX(enteredTitle, enteredAmount);
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Container(
        padding: EdgeInsets.all(10),
        child: Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
          TextField(
            decoration: InputDecoration(labelText: "Title"),
            controller: titleController,
            onSubmitted: (_) => submmitedData(),
            // onChanged: (val) {
            //   titleInput = val;
            // },
          ),
          TextField(
            decoration: InputDecoration(labelText: "Amount"),
            controller: amountController,
            keyboardType: TextInputType.number,
            onSubmitted: (_) => submmitedData(),
            // onChanged: (val) => amountInput = val,
          ),
          FlatButton(
            onPressed: submmitedData,
            child: Text(
              "Add Transaction",
              style: TextStyle(color: Colors.purple),
            ),
          ),
        ]),
      ),
    );
  }
}
