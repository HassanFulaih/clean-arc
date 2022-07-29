import 'package:flutter/material.dart';

import '../../../domain/entities/post.dart';
import 'delete_post_btn_widget.dart';
import 'update_post_btn_widget.dart';

class PostDetailWidget extends StatelessWidget {
  final Post post;
  const PostDetailWidget({Key? key, required this.post}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Column(
        children: [
          Text(
            post.title,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Divider(height: 50),
          Text(
            post.body,
            style: const TextStyle(
              fontSize: 16,
            ),
          ),
          const Divider(height: 50),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(child: UpdatePostBtnWidget(post: post)),
              const SizedBox(width: 8),
              Expanded(child: DeletePostBtnWidget(postId: post.id!))
            ],
          ),
        ],
      ),
    );
  }
}
