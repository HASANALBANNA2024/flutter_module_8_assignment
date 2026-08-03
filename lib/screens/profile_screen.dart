import 'package:flutter/material.dart';

import '../data/profile_dummy_data.dart';
import '../widgets/action_buttons.dart';
import '../widgets/contact_info_row.dart';
import '../widgets/interest_card.dart';
import '../widgets/profile_header.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF3F4F6),
      body: SafeArea(
        child: SingleChildScrollView(
          // padding: const EdgeInsets.all(10.0),
          child: Center(
            child: Container(
              // maxWidth: 420,
              padding: const EdgeInsets.all(12.0),
              decoration: BoxDecoration(
                color: const Color(0xFFF3F4F6),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  // --- TOP PROFILE CONTAINER ---
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20.0,
                      vertical: 24.0,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: Colors.grey.shade200),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const ProfileHeader(
                          imageUrl: profileImageUrl,
                          name: profileName,
                          title: profileTitle,
                          bio: profileBio,
                        ),
                        const SizedBox(height: 16),
                        Divider(color: Colors.grey.shade200, height: 1),
                        const SizedBox(height: 16),

                        // Left-aligned contact info
                        const Padding(
                          padding: EdgeInsets.only(left: 16.0),
                          child: Column(
                            children: [
                              ContactInfoRow(
                                icon: Icons.email_outlined,
                                text: profileEmail,
                              ),
                              SizedBox(height: 8),
                              ContactInfoRow(
                                icon: Icons.phone_outlined,
                                text: profilePhone,
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 16),
                        const ActionButtons(),
                      ],
                    ),
                  ),

                  const SizedBox(height: 24),

                  // --- INTERESTS SECTION WITH DIVIDER LINES ---
                  Row(
                    children: [
                      Expanded(
                        child: Divider(
                          color: Colors.grey.shade300,
                          thickness: 1,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12.0),
                        child: Text(
                          'Interests',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey.shade800,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Divider(
                          color: Colors.grey.shade300,
                          thickness: 1,
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 16),

                  // --- INTEREST CARDS ---
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: mockInterests
                        .map(
                          (interest) => Expanded(
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 4.0,
                              ),
                              child: InterestCard(interest: interest),
                            ),
                          ),
                        )
                        .toList(),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
