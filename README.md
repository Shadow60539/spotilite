
[![support](https://img.shields.io/badge/plateform-flutter%7Candroid%20studio-9cf?style=plastic&logo=appveyor)](https://github.com/Shadow60539/spotilite)

# Introduction

> “Spotilite”
is a small, simple and beautiful app,
listen to your fav songs with no intruptions.

Before we start, you can take a look at the app:

![Output sample](assets/images/demo.gif)

## Key Features

- [x] Listen tracks.
- [x] Save liked tracks for easy accessablility.
- [x] Connectivity check every single second.


## How To Use

To clone and run this application, you'll need [Git](https://git-scm.com) and [Flutter](https://flutter.dev/docs/get-started/install) installed on your computer. From your command line:

```bash
# Clone this repository
$ git clone https://github.com/Shadow60539/spotilite.git

# Go into the repository
$ cd spotilite.git

# Install dependencies
$ flutter packages get

# Run the app
$ flutter run
```


### Packages


Some very good packages are used in the project, not a big list.


Below are the information about these packages.


package | explain
---|---
[auto_route](https://pub.flutter-io.cn/packages/auto_route) | Navigations
[auto_route_generator](https://pub.flutter-io.cn/packages/hive_generator) | Navigations Generator
[font_awesome_flutter](https://pub.flutter-io.cn/packages/font_awesome_flutter) | Awesome icons
[http](https://pub.flutter-io.cn/packages/table_calendar) | Network
[cached_network_image](https://pub.flutter-io.cn/packages/cached_network_image) | Caching Network Images
[connectivity](https://pub.flutter-io.cn/packages/connectivity) | Connectivity Checker
[flutter_bloc](https://pub.flutter-io.cn/packages/flutter_bloc) | Bloc Pattern
[get_it](https://pub.flutter-io.cn/packages/cget_it) | Service Locator
[dartz](https://pub.flutter-io.cn/packages/dartz) | Functional Programming Support
[injectable](https://pub.flutter-io.cn/packages/injectable) | Code Generator for get_it
[lottie](https://pub.flutter-io.cn/packages/lottie) | Lottie files animations
[google_fonts](https://pub.flutter-io.cn/packages/google_fonts) | Google fonts 
[provider](https://pub.flutter-io.cn/packages/provider) | Simple State Management
[shared_preferences](https://pub.flutter-io.cn/packages/shared_preferences) | Easy Local Storage
[freezed](https://pub.flutter-io.cn/packages/freezed) | Code generation for immutable classes
[injectable_generator](https://pub.flutter-io.cn/packages/injectable_generator) | Generator for injectable
[lint](https://pub.flutter-io.cn/packages/lint) | Rules handler for Dart
[build_runner](https://pub.flutter-io.cn/packages/build_runner) | Build Custom Models

### Directory Structure

The project directory structure is as follows:

```
├── android
├── asset
├── build
├── images
├── ios
├── lib
├── pubspec.lock
├── pubspec.yaml

```


Let me explain the other directories besides **lib**:

directory | explain
---|---
images | readme images files
asset | images and lottie files

Then the lib directory


![lib](assets/images/lib.png)



directory | explain
---|---
core | Core layer
data | Data layer
presentation | Presentation Layer

