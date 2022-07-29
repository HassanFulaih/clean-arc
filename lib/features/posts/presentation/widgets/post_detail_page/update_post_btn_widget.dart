import 'package:flutter/material.dart';

import '../../../domain/entities/post.dart';
import '../../pages/post_add_update_page.dart';

class UpdatePostBtnWidget extends StatelessWidget {
  final Post post;

  const UpdatePostBtnWidget({Key? key, required this.post}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) => PostAddUpdatePage(
              isUpdatePost: true,
              post: post,
            ),
          ),
        ),
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(vertical: 15),
        ),
      icon: const Icon(Icons.edit),
      label: const Text('Edit'),
    );
  }
}
