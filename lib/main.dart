import 'package:cuoiky_leduyminhduong/login/main.dart';
import 'dart:io';
import 'package:audio_service/audio_service.dart';
import 'package:bitsdojo_window/bitsdojo_window.dart';
import 'package:cuoiky_leduyminhduong/login/routing/app_router.dart';
import 'package:cuoiky_leduyminhduong/login/routing/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_displaymode/flutter_displaymode.dart';
import 'package:get_it/get_it.dart';
import 'package:cuoiky_leduyminhduong/music/providers/audio_handler.dart';
import 'package:cuoiky_leduyminhduong/music/providers/media_manager.dart';
import 'package:cuoiky_leduyminhduong/music/providers/theme_manager.dart';
import 'package:cuoiky_leduyminhduong/music/utils/playback_cache.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:metadata_god/metadata_god.dart';
import 'package:provider/provider.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:cuoiky_leduyminhduong/firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  FirebaseAuth.instance.authStateChanges().listen(
    (user) {
      if (user == null || !user.emailVerified) {
        initialRoute = Routes.loginScreen;
      } else {
        initialRoute = Routes.homeScreen;
      }
    },
  );
  await ScreenUtil.ensureScreenSize();

  await Hive.initFlutter();
  MetadataGod.initialize();
  await openBox('HomeCache');
  await openBox('settings');
  await openBox('downloads');
  await openBox('favorites');
  await openBox('songHistory');
  await openBox('searchHistory');
  await openBox('playlists');

  SystemChrome.setEnabledSystemUIMode(
    SystemUiMode.edgeToEdge,
    overlays: [SystemUiOverlay.top],
  );
  try {
    if (Platform.isAndroid) {
      await FlutterDisplayMode.setHighRefreshRate();
    }
  } catch (e) {
    // Handle any exceptions here
    // ignore: avoid_print
    print('Error setting high refresh rate: $e');
  }

  GetIt.I.registerSingleton<AudioHandler>(await initAudioService());
  GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
  GetIt.I.registerSingleton<GlobalKey<NavigatorState>>(navigatorKey);
  MediaManager mediaManager = MediaManager();
  ThemeManager themeManager = ThemeManager();
  GetIt.I.registerSingleton(mediaManager);
  GetIt.I.registerSingleton(themeManager);
  GetIt.I.registerSingleton(PlaybackCache());

  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (context) => themeManager),
      ChangeNotifierProvider(create: (context) => mediaManager),
    ],
    child: MyApp(router: AppRouter()),
  ));
  if (Platform.isLinux) {
    doWhenWindowReady(() {
      const initialSize = Size(1280, 720);
      // appWindow.minSize = initialSize;
      appWindow.size = initialSize;
      appWindow.alignment = Alignment.center;
      appWindow.show();
    });
  }
}

Future<Box<E>> openBox<E>(String name) async {
  return await Hive.openBox(name, path: Platform.isAndroid ? null : 'Gyawun');
}
