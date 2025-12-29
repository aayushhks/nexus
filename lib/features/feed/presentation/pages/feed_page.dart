import 'package:flutter/material.dart';
import 'package:nexus/features/feed/presentation/widgets/announcement_card.dart';

class FeedPage extends StatelessWidget {
  const FeedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF3F4F6),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Row(
          children: [
            // Logo / Branding
            Container(
              padding: const EdgeInsets.all(6),
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(8),
              ),
              child: const Icon(Icons.school, color: Colors.white, size: 20),
            ),
            const SizedBox(width: 12),
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Nexus Feed",
                  style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 18),
                ),
                Text(
                  "University of Technology",
                  style: TextStyle(color: Colors.grey, fontSize: 10),
                ),
              ],
            ),
          ],
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications_none, color: Colors.black),
            onPressed: () {},
          ),
        ],
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(1.0),
          child: Container(color: Colors.grey.shade200, height: 1.0),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          // 1. Smart Greeting / Quick Actions
          const Text(
            "Good Morning, John",
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 16),

          // Quick Action Row
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                _buildQuickAction(Icons.book, "Library", Colors.orange),
                const SizedBox(width: 12),
                _buildQuickAction(Icons.map, "Campus Map", Colors.blue),
                const SizedBox(width: 12),
                _buildQuickAction(Icons.restaurant, "Food Menu", Colors.green),
                const SizedBox(width: 12),
                _buildQuickAction(Icons.bus_alert, "Transport", Colors.purple),
              ],
            ),
          ),
          const SizedBox(height: 24),

          // 2. Pinned / Official Section
          Row(
            children: [
              Icon(Icons.campaign, size: 20, color: Colors.grey.shade700),
              const SizedBox(width: 8),
              Text(
                "Official Updates",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600, color: Colors.grey.shade700),
              ),
            ],
          ),
          const SizedBox(height: 12),

          const AnnouncementCard(
            author: "Dean's Office",
            role: "Admin",
            timeAgo: "2h ago",
            title: "Revised Mid-Semester Exam Schedule",
            previewText: "The schedule for the upcoming exams has been shifted by two days due to the state elections. Please check the attached PDF.",
            category: "Academics",
            isPinned: true,
            hasAttachment: true,
          ),

          const SizedBox(height: 24),

          // 3. Community / General Feed
          Row(
            children: [
              Icon(Icons.forum_outlined, size: 20, color: Colors.grey.shade700),
              const SizedBox(width: 8),
              Text(
                "Community",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600, color: Colors.grey.shade700),
              ),
            ],
          ),
          const SizedBox(height: 12),

          const AnnouncementCard(
            author: "Coding Club",
            role: "Club",
            timeAgo: "5h ago",
            title: "Hackathon Team Formation",
            previewText: "Looking for a backend developer for the upcoming State Hackathon. Must know Node.js. DM for details.",
            category: "Clubs",
          ),

          const AnnouncementCard(
            author: "Library Admin",
            role: "Staff",
            timeAgo: "1d ago",
            title: "New Arrivals: AI & Machine Learning",
            previewText: "We have added 50 new copies of 'Deep Learning' by Ian Goodfellow to the reference section.",
            category: "Facilities",
          ),

          const AnnouncementCard(
            author: "Student Council",
            role: "Rep",
            timeAgo: "2d ago",
            title: "Cafeteria Feedback Survey",
            previewText: "We are collecting feedback on the new lunch menu. Please fill out the form by Friday.",
            category: "General",
          ),
        ],
      ),
    );
  }

  Widget _buildQuickAction(IconData icon, String label, Color color) {
    return Column(
      children: [
        Container(
          width: 60,
          height: 60,
          decoration: BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle,
            border: Border.all(color: Colors.grey.shade200),
            boxShadow: [
              BoxShadow(
                color: color.withOpacity(0.1),
                blurRadius: 8,
                offset: const Offset(0, 4),
              ),
            ],
          ),
          child: Icon(icon, color: color, size: 24),
        ),
        const SizedBox(height: 8),
        Text(
          label,
          style: const TextStyle(fontSize: 11, fontWeight: FontWeight.w500),
        ),
      ],
    );
  }
}