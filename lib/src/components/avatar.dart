import 'dart:convert';

import 'package:crypto/crypto.dart' show md5;
import 'package:flutter/material.dart';

class Avatar extends StatelessWidget {
  final String? email;

  const Avatar({
    Key? key,
    this.email,
  }) : super(key: key);

  String buildGravataUrl(String? email) {
    var hash = '00000000000000000000000000000000';
    if (email != null) {
      final bytes = utf8.encode(email);
      hash = md5.convert(bytes).toString();
    }

    return 'https://www.gravatar.com/avatar/$hash?d=identicon';
  }

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 29,
      backgroundColor: Colors.white,
      child: ClipOval(
        child: Image.network(
          buildGravataUrl(email),
          width: 48,
          height: 48,
        ),
      ),
    );
  }
}
