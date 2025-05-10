
import 'package:e_commerce_app/screens/login_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'screens/splash_screen.dart';
 import 'screens/dashboard_screen.dart';
import 'screens/product_list_screen.dart';
import 'screens/product_detail_screen.dart';
import 'screens/cart_screen.dart';
import 'providers/cart_provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => CartProvider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: '/',
        routes: {
          '/': (_) => SplashScreen(),
          '/login': (_) => LoginScreen(),
          '/dashboard': (_) => DashboardScreen(),
          '/product_list': (_) => ProductListScreen(),
          '/product_detail': (_) => ProductDetailScreen(),
          '/cart': (_) => CartScreen(),
        },
      ),
    ),
  );
}
