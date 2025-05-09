# e_commerce_app

A simple e-commerce mobile application built using Flutter and the [Fake Store API](https://fakestoreapi.com/). This app demonstrates a basic shopping experience including login, category browsing, product listing, cart management, and navigation with dynamic data fetching.

## Features

### 1. Splash Screen
- Displays app name/logo with fade-in animation.
- Automatically navigates to the login screen after 3 seconds.

### 2. Login Screen
- Form with email and password fields.
- Basic validation for email format and password length.
- Dummy login (no backend authentication).
- Navigates to the dashboard upon successful login.

### 3. Dashboard (Category Screen)
- Fetches product categories from the Fake Store API.
- Displays each category in a grid format.
- Tapping a category navigates to the product list for that category.

### 4. Product List Screen
- Fetches and displays products in the selected category.
- Each product card shows an image, title, and price.
- Tapping a product opens its detailed view.

### 5. Product Details Screen
- Displays detailed information: image, title, description, price.
- "Add to Cart" button adds the product to the cart using `Provider`.

### 6. Cart Screen
- Displays products added to the cart.
- Shows product title, image, price, quantity, and subtotal.
- Allows incrementing/decrementing quantity or removing items.
- Displays total price.
- Includes a non-functional "Checkout" button.

## Technologies Used
- **Flutter**
- **Provider** for state management
- **HTTP** for API calls

## Getting Started

### Prerequisites
- Flutter SDK
- Android Studio or VS Code

### Installation
1. Clone or download the repository.
2. Run `flutter pub get` to install dependencies.
3. Launch the app using an emulator or physical device.

### Project Structure
```
lib/
├── main.dart
├── models/
│   └── product_model.dart
├── providers/
│   └── cart_provider.dart
├── screens/
│   ├── splash_screen.dart
│   ├── login_screen.dart
│   ├── dashboard_screen.dart
│   ├── product_list_screen.dart
│   ├── product_detail_screen.dart
│   └── cart_screen.dart
└── services/
    └── api_service.dart
```

## API Reference
- Fake Store API: [https://fakestoreapi.com/](https://fakestoreapi.com/)
 
