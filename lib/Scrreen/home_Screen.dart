import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Svg Reader Demo app'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            //You can call the SVG file from your assets like so:
            SvgPicture.asset(
              'assets/svg/user.svg',
              //You can give a height and width to the image like so:
              width: 40.0,
              height: 40.0,
              //You can color/tint the image like so:
              color: Colors.green,
            ),

            SvgPicture.asset(
              'assets/svg/log_out.svg',
              width: 40.0,
              height: 40.0,
              color: Colors.orange,
            ),
            //
            //
            //You can call the SVG file from your Network like so:
            SvgPicture.network(
              'https://svgshare.com/i/eCJ.svg',
              width: 20.0,
              height: 20.0,
              color: Colors.red,
              //You can also specify a placeholder widget. The placeholder will display during parsing/loading (normally only relevant for network access).
              placeholderBuilder: (BuildContext context) => Container(
                  padding: const EdgeInsets.all(30.0),
                  child: const CircularProgressIndicator()),
            ),
          ],
        ),
      ),
    );
  }
}
