# react-native-screen-capture

> Please do not install. It is under construction.

**`react-native-screen-capture`** allows you to protect screens in your app from being captured or recorded, as well as be notified if a screenshot is taken while your app is foregrounded.

**Keep Awake** provides a React hook that prevents the screen from sleeping and a pair of functions to enable this behavior imperatively.

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

// Keep awake true
ScreenCapture.keepAwake(true);

// Keep awake false
ScreenCapture.keepAwake(false);
```

## Roadmap

|   Status   | Platform | Goal                   |
| :--------: | :------: | :--------------------- |
|     ✅     | Android  | Screenshot disable     |
|     🚧     | iOS      | Screenshot disable     |
|     ✅     | Android  | Keep awake on or off  |
|     ✅     | iOS      | Keep awake on or off  |
|     🚧     | Android  | Record capture disable |
|     🚧     | iOS      | Record capture disable |

## Contributing

See the [contributing guide](CONTRIBUTING.md) to learn how to contribute to the repository and the development workflow.

## License

MIT
