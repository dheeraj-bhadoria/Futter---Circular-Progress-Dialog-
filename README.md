# Circular Progress Dialog

Circular Progress Dialog - Use this to show a circular progress dialog

## Platform Support

| Android | iOS | MacOS | Web | Linux | Windows |
| :-----: | :-: | :---: | :-: | :---: | :-----: |
|   ✔️    | ✔️  |  ✔️   | ✔️  |  ✔️   |   ✔️    |


## Getting Started

With Flutter:

```yaml

$ flutter pub add circular_progress_dialog

```

This will add a line like this to your package's pubspec.yaml (and run an implicit flutter pub get):

```yaml

dependencies:
  circular_progress_dialog: ^1.0.0+1

```

Alternatively, your editor might support flutter pub get. Check the docs for your editor to learn more.

## Example

First import the class in your class

```dart

import 'package:circular_progress_dialog/circular_progress_dialog.dart';

```

Example

```dart

import 'package:circular_progress_dialog/circular_progress_dialog.dart';

class _MyHomePageState extends State<MyHomePage> {
  bool isVisible = false;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          children: [
            InkWell(
              child: Text((isVisible)?"Hide Dialog":"Show Dialog"),
              onTap: (){
                setState(() {
                  if(isVisible){
                    isVisible = false;
                  }else{
                    isVisible = true;
                  }

                });
              },
            ),
            Container(
              width: 500,
              height: 500,
              child: (isVisible)?
              CircularProgressDialog(container_width: 100,
                  container_height: 100, 
                  icon_size: 50, 
                  icon_color: 
                  Colors.blue): 
              SizedBox(),
            )
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

```

## License

MIT License

Copyright (c) 2022 Dheeraj Singh Bhadoria

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
