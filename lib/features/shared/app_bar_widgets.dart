import 'package:flutter/material.dart';

/*
 * Author @ Muhammad Muddassar
 * Date @ 1 Dec, 2025
*/

class AppBarLeadingWidget extends StatelessWidget {
  const AppBarLeadingWidget({super.key, required this.label});

  final String label;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: Theme.of(context).colorScheme.surfaceContainerLowest,
      ),
      child: Row(
        spacing: 4,
        children: [
          Icon(
            Icons.location_on_outlined,
            color: Theme.of(context).colorScheme.onSurface,
            size: 20,
          ),
          Text(
            label,
            style: Theme.of(context).textTheme.labelLarge?.copyWith(),
          ),
        ],
      ),
    );
  }
}

class AppBarTrailingWidget extends StatelessWidget {
  const AppBarTrailingWidget({super.key, this.onClick});

  final VoidCallback? onClick;

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 12,
      mainAxisSize: MainAxisSize.min,
      children: [
        /// Notifications
        InkWell(
          onTap: onClick,
          borderRadius: BorderRadius.circular(100),
          child: Container(
            height: 44,
            width: 44,
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              border: Border.all(
                color: Theme.of(context).colorScheme.onSurface,
                width: .5,
              ),
            ),
            child: Icon(
              Icons.notifications_none_sharp,
              color: Theme.of(context).colorScheme.onSurface,
              size: 24,
            ),
          ),
        ),

        /// Image
        Container(
          height: 44,
          width: 44,
          clipBehavior: Clip.antiAliasWithSaveLayer,
          decoration: BoxDecoration(shape: BoxShape.circle),
          child: const CircleAvatar(
            radius: 22,
            backgroundImage: NetworkImage(
              'https://images.unsplash.com/photo-1535713875002-d1d0cf377fde?fm=jpg&q=60&w=3000&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8dXNlcnxlbnwwfHwwfHx8MA%3D%3D',
            ),
          ),
        ),
      ],
    );
  }
}
