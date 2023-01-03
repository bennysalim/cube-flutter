import 'package:cube/views/1.intro/2.onboarding_screen.dart';
import 'package:cube/views/1.intro/1.splash_screen.dart';
import 'package:cube/views/2.auth/auth_screen.dart';
import 'package:cube/views/2.auth/biodata_screen.dart';
import 'package:cube/views/3.app/1.home/home_screen.dart';
import 'package:cube/views/3.app/2.search/search_screen.dart';
import 'package:cube/views/3.app/3.add/add_post_screen.dart';
import 'package:cube/views/3.app/4.chat/chat_detail_screen.dart';
import 'package:cube/views/3.app/4.chat/chat_list_screen.dart';
import 'package:cube/views/3.app/user_screen/posts/user_post_detail.dart';
import 'package:cube/views/3.app/user_screen/posts/user_post_listview_screen.dart';
import 'package:cube/views/3.app/user_screen/profile/edit_profile_screen.dart';
import 'package:cube/views/3.app/user_screen/profile/my_following_screen.dart';
import 'package:cube/views/3.app/user_screen/profile/user_profile_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: GoogleFonts.montserrat().fontFamily,
      ),
      initialRoute: SplashScreen.routeName,
      routes: {
        //intro
        SplashScreen.routeName: (context) => const SplashScreen(),
        OnboardingScreen.routeName: (context) => const OnboardingScreen(),
        //auth
        AuthScreen.routeName: (context) => const AuthScreen(),
        BiodataScreen.routeName: (context) => const BiodataScreen(),
        //1. home
        HomeScreen.routeName: (context) => const HomeScreen(),
        //2. search
        SearchScreen.routeName: (context) => const SearchScreen(),
        //3. add
        AddPostScreen.routeName: (context) => const AddPostScreen(),
        //4. chat
        ChatListScreen.routeName: (context) => const ChatListScreen(),
        ChatDetailScreen.routeName: (context) => const ChatDetailScreen(),
        //USER_SCREEN
        //--posts
        UserPostDetail.routeName: (context) => const UserPostDetail(),
        UserPostListViewScreen.routeName: (context) =>
            const UserPostListViewScreen(),
        //--profile
        EditProfileScreen.routeName: (context) => const EditProfileScreen(),
        MyFollowingScreen.routeName: (context) => const MyFollowingScreen(),
        UserProfileScreen.routeName: (context) => const UserProfileScreen(),
      },
    );
  }
}
