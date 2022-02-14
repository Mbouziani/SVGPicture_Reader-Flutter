# Draw SVG files on a Flutter Widget. [flutter_svg 1.0.3](https://pub.dev/packages/flutter_svg)

An SVG rendering and widget library for Flutter, which allows painting and displaying Scalable Vector Graphics 1.1 files.

## Getting Started

- ### Download this package as a library
 
  - Depend on it Run this command:
    ```
    $ flutter pub add flutter_svg
    ```
 
  - This will add a line like this to your package's pubspec.yaml (and run an implicit flutter pub get):
    ```
    dependencies:
       flutter_svg: ^1.0.3
    ```
  - Import it Now in your Dart code, you can use:
     ```
     import 'package:flutter_svg/flutter_svg.dart';
     ```
- ### How to Use this Packege
 
  - Basic usage (to create an SVG rendering widget from an asset):
    ```
      //You can call the SVG file from your assets like so:
      SvgPicture.asset(
        'assets/svg/put_your_svg_file.svg',
        //You can give a height and width to the image like so:
        width: 40.0,
        height: 40.0,
        //You can color/tint the image like so:
        color: Colors.green,
      ),
    ```
    
   - Basic usage (to create an SVG rendering widget from Network):
    ```
      //You can call the SVG file from your Network like so:
      SvgPicture.network(
        'https://svgshare.com/i/eCJ.svg',
        width: 20.0,
        height: 20.0,
        color: Colors.red,
        //You can also specify a placeholder widget.
        //The placeholder will display during parsing/loading (normally only relevant for network access).
        placeholderBuilder: (BuildContext context) => Container(
            padding: const EdgeInsets.all(30.0),
            child: const CircularProgressIndicator()),
      ),
    ```
- ### Preview
<img src="https://user-images.githubusercontent.com/82768399/153858630-9b56d191-5875-405f-bad9-c269afee05d0.png" width="400" >
