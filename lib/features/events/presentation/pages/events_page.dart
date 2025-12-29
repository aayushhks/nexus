import 'package:flutter/material.dart';
import 'package:nexus/features/events/presentation/widgets/event_card.dart';

class EventsPage extends StatelessWidget {
  const EventsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF3F4F6),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          'Campus Events',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.filter_list, color: Colors.black),
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
        children: const [
          // Section Title
          Padding(
            padding: EdgeInsets.only(bottom: 12, left: 4),
            child: Text(
              "Happening Today",
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600, color: Colors.grey),
            ),
          ),

          // Event 1: Targeted to CS Students
          EventCard(
            title: 'Intro to Machine Learning Workshop',
            organizer: 'AI Club',
            date: 'Today',
            time: '5:00 PM',
            location: 'Room 304, Engineering Block',
            category: 'Tech',
            targetAudience: 'CS Students',
            isVerified: true,
          ),

          // Event 2: General Campus Event
          EventCard(
            title: 'Inter-College Football Finals',
            organizer: 'Sports Committee',
            date: 'Today',
            time: '6:30 PM',
            location: 'Main Stadium',
            category: 'Sports',
            targetAudience: 'Campus Wide',
            isVerified: true,
          ),

          Padding(
            padding: EdgeInsets.only(bottom: 12, top: 12, left: 4),
            child: Text(
              "Upcoming",
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600, color: Colors.grey),
            ),
          ),

          // Event 3: Academic
          EventCard(
            title: 'Guest Lecture: Future of Quantum Computing',
            organizer: 'Physics Dept',
            date: 'Tomorrow',
            time: '11:00 AM',
            location: 'Auditorium A',
            category: 'Academic',
            targetAudience: 'Science Dept',
            isVerified: true,
          ),
        ],
      ),
    );
  }
}