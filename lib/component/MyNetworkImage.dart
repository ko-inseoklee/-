import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget MyNetworkImage (String ref) {
  return Image.network(ref,
    loadingBuilder: (context, child, loadingProgress) {
      if (loadingProgress == null) return child;
      return Center(
        child: CircularProgressIndicator.adaptive(),
      );
    },
  );
}