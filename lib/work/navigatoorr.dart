import 'package:flutter/material.dart';

import 'futureBuilder.dart';

navi(context) {
  //materialPageRoute  is built in class...
  Navigator.push(context, MaterialPageRoute(
    builder: (context) {
      return FB();
    },
  ));

//method of pop
  Navigator.pop(context);
}
