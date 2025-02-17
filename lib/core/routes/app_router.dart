import 'package:go_router/go_router.dart';
import 'package:flutter/material.dart';
import '../../features/my_course/presentation/pages/course_detail_page.dart';
import '../../features/my_course/presentation/pages/my_course_page.dart';
import '../../features/my_course/presentation/pages/video_player_page.dart';

final GoRouter appRouter = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const MyCoursePage(),
    ),
    GoRoute(
      path: '/course-detail/:id',
      builder: (context, state) {
        final String courseId = state.pathParameters['id'] ?? '';
        return CourseDetailPage(courseId: courseId);
      },
    ),
    GoRoute(
      path: '/video-player',
      builder: (context, state) {
        final args = state.extra as Map<String, dynamic>;
        return VideoPlayerPage(videoUrl: args['videoUrl'], title: args['title']);
      },
    ),
  ],
);
