# react-native-screen-capture

**`Screen Capture`** allows you to protect screens in your app from being captured or recorded, as well as be notified if a screenshot is taken while your app is foregrounded.

**`Keep Awake`**, keep the screen from going to sleep. iOS and Android

## Installation

```sh
npm i react-native-screen-capture
```
## Preview
![](preview.gif)

## Usage

```js
import { disallowScreenshot, keepAwake } from 'react-native-screen-capture';

// disable screenshots
disallowScreenshot(true);

// enable screenshots
disallowScreenshot(false);

// Keep awake true
keepAwake(true);

// Keep awake false
keepAwake(false);
```

## Roadmap

|   Status   | Platform | Goal                    |
| :--------: | :------: | :---------------------- |
|     ✅     | Android  | Screenshot disable      |
|     ✅     | iOS      | Screenshot disable      |
|     ✅     | Android  | Keep awake on or off    |
|     ✅     | iOS      | Keep awake on or off    |

## Contributing

See the [contributing guide](CONTRIBUTING.md) to learn how to contribute to the repository and the development workflow.

## License

MIT
