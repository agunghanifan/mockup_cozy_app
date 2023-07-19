import "package:flutter/material.dart";

import "../pages/error/not_found_page.dart";

class CustomHandlingError {
  const CustomHandlingError();

  Future<void> pushToNotFoundPage(BuildContext context) async {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => const NotFoundPage()));
  }
}
