import 'package:flutter/material.dart';

TextButton buildBottomSheetComment(BuildContext context) {
  TextEditingController _comment = TextEditingController();
  TextEditingController _rating = TextEditingController();
  TextEditingController _isLiked = TextEditingController();

  return TextButton(
    onPressed: () => showModalBottomSheet(
        context: context,
        builder: (context) => Container(
              height: 200,
              color: Colors.amber,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    const Text('Modal BottomSheet'),
                    ElevatedButton(
                      child: const Text('Close BottomSheet'),
                      onPressed: () => Navigator.pop(context),
                    )
                  ],
                ),
              ),
            )),
    child: const Text('Reviews',
        style: TextStyle(
            color: Colors.blue, fontSize: 16, fontWeight: FontWeight.w600)),
  );
}
