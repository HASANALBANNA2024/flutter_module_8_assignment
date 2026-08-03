import '../models/interest_model.dart';

const String profileImageUrl =
    'https://images.unsplash.com/photo-1534528741775-53994a69daeb?auto=format&fit=crop&q=80&w=500';
const String profileName = 'John Doe';
const String profileTitle = 'Flutter Developer';
const String profileBio =
    'Passionate about creating user-friendly and engaging digital experiences.';
const String profileEmail = 'john.doe@example.com';
const String profilePhone = '+123 456 7890';

final List<InterestModel> mockInterests = [
  const InterestModel(
    title: 'Travel',
    description: 'Exploring new places around the world.',
    imageUrl:
        'https://images.unsplash.com/photo-1507525428034-b723cf961d3e?auto=format&fit=crop&q=80&w=500',
  ),
  const InterestModel(
    title: 'Photography',
    description: 'Capturing moments through the lens.',
    imageUrl:
        'https://images.unsplash.com/photo-1516035069371-29a1b244cc32?auto=format&fit=crop&q=80&w=500',
  ),
];
