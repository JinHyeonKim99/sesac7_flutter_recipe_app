import 'package:flutter/material.dart';
import 'package:flutter_recipe_app/ui/app_colors.dart';

class BookmarkButton extends StatelessWidget {
  final List<int> bookmarkedRecipeIds;
  final int id;
  final void Function(int id) onClick;

  const BookmarkButton({
    super.key,
    required this.bookmarkedRecipeIds,
    required this.id,
    required this.onClick,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        Icons.bookmark,
        color: bookmarkedRecipeIds.contains(id)
            ? AppColors.primary100
            : Colors.grey,
      ),
      onPressed: () {
        print(id);
        print(bookmarkedRecipeIds);
        onClick(id);
      },
    );
  }
}
