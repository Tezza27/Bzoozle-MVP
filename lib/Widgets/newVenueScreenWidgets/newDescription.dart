import 'package:flutter/material.dart';

Widget newDescription() {
  return SingleChildScrollView(
    child: Container(
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(),
          ],
        ),
      ),
    ),
  );
}
