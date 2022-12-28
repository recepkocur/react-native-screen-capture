# react-native-screen-capture

> Please do not install. It is under construction.

**`react-native-screen-capture`** allows you to protect screens in your app from being captured or recorded, as well as be notified if a screenshot is taken while your app is foregrounded.

## Installation

```sh
npm i react-native-screen-capture
```

## Usage

```js
import { ScreenCapture } from 'react-native-screen-capture';

// disable screenshots
ScreenCapture.disallowScreenshot(true);

// enable screenshots
ScreenCapture.disallowScreenshot(false);
```

## TO-DO

```objective-c
- (void)applicationWillResignActive:(UIApplication *)application {
  UIView *colourView = [[UIView alloc]initWithFrame:self.window.frame];
  colourView.backgroundColor = [UIColor whiteColor];
  colourView.tag = 1234;
  colourView.alpha = 0;
  [self.window addSubview:colourView];
  [self.window bringSubviewToFront:colourView];

  // fade in the view
  [UIView animateWithDuration:0.5 animations:^{
    colourView.alpha = 1;
  }];
}

- (void)applicationDidBecomeActive:(UIApplication \*)application {
  UIView \*colourView = [self.window viewWithTag:1234];
  [UIView animateWithDuration:0.5 animations:^{
    colourView.alpha = 0;
  } completion:^(BOOL finished) {
    [colourView removeFromSuperview];
  }];
}
```

## Roadmap

|   Status   | Platform | Goal                   |
| :--------: | :------: | :--------------------- |
|     🚧     | Android  | Screenshot disable     |
|     🚧     | iOS      | Screenshot disable     |
|     🚧     | Android  | Record capture disable |
|     🚧     | iOS      | Record capture disable |

## Contributing

See the [contributing guide](CONTRIBUTING.md) to learn how to contribute to the repository and the development workflow.

## License

MIT
