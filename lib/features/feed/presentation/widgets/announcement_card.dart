import 'package:flutter/material.dart';

class AnnouncementCard extends StatelessWidget {
  final String author;
  final String role; // e.g., "Admin", "Student Rep"
  final String timeAgo;
  final String title;
  final String previewText;
  final String category; // e.g., "Exam Cell", "Placement"
  final bool isPinned;
  final bool hasAttachment;

  const AnnouncementCard({
    super.key,
    required this.author,
    required this.role,
    required this.timeAgo,
    required this.title,
    required this.previewText,
    required this.category,
    this.isPinned = false,
    this.hasAttachment = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: Colors.grey.shade200),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.01),
            blurRadius: 10,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // 1. Meta Header (Author + Time)
          Row(
            children: [
              if (isPinned)
                const Padding(
                  padding: EdgeInsets.only(right: 8.0),
                  child: Icon(Icons.push_pin, size: 16, color: Colors.blue),
                ),
              CircleAvatar(
                radius: 12,
                backgroundColor: Colors.grey.shade100,
                child: Text(author[0], style: const TextStyle(fontSize: 10, color: Colors.black)),
              ),
              const SizedBox(width: 8),
              Text(
                author,
                style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 13),
              ),
              const SizedBox(width: 4),
              if (role == "Admin")
                const Icon(Icons.verified, size: 14, color: Colors.blue),
              const Spacer(),
              Text(
                timeAgo,
                style: TextStyle(fontSize: 11, color: Colors.grey.shade500),
              ),
            ],
          ),
          const SizedBox(height: 12),

          // 2. Title & Category Tag
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Text(
                  title,
                  style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold, height: 1.3),
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),

          // 3. Category Badge (The "Signal")
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
            decoration: BoxDecoration(
              color: Colors.grey.shade100,
              borderRadius: BorderRadius.circular(6),
            ),
            child: Text(
              category.toUpperCase(),
              style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold, color: Colors.grey.shade700),
            ),
          ),
          const SizedBox(height: 12),

          // 4. Preview Text
          Text(
            previewText,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(fontSize: 14, color: Colors.grey.shade600, height: 1.5),
          ),

          if (hasAttachment) ...[
            const SizedBox(height: 12),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey.shade200),
                borderRadius: BorderRadius.circular(8),
              ),
              child: const Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.picture_as_pdf, size: 16, color: Colors.red),
                  SizedBox(width: 8),
                  Text("Notice.pdf", style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500)),
                ],
              ),
            ),
          ],
        ],
      ),
    );
  }
}