# react-native-screen-capture

> Please do not install. It is under construction.

**`react-native-screen-capture`** allows you to protect screens in your app from being captured or recorded, as well as be notified if a screenshot is taken while your app is foregrounded.

## Installation

```sh
npm i react-native-screen-capture
```

## Usage

```js
import ScreenCapture from 'react-native-screen-capture';

// disable screenshots
ScreenCapture.disallowScreenshot(true);

// enable screenshots
ScreenCapture.disallowScreenshot(false);

// Keep screen on
ScreenCapture.keepScreen(true);

// Keep screen off
ScreenCapture.keepScreen(false);
```

## Roadmap

|   Status   | Platform | Goal                   |
| :--------: | :------: | :--------------------- |
|     ✅     | Android  | Screenshot disable     |
|     🚧     | iOS      | Screenshot disable     |
|     ✅     | Android  | Keep screen on or off  |
|     🚧     | iOS      | Keep screen on or off  |
|     🚧     | Android  | Record capture disable |
|     🚧     | iOS      | Record capture disable |

## Contributing

See the [contributing guide](CONTRIBUTING.md) to learn how to contribute to the repository and the development workflow.

## License

MIT
