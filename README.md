# react-native-screen-capture

**`Screen Capture`** allows you to protect screens in your app from being captured or recorded, as well as be notified if a screenshot is taken while your app is foregrounded.

**`Keep Awake`**, keep the screen from going to sleep. iOS and Android

## Installation

```sh
npm i react-native-screen-capture
```

## Usage

```js
import { disallowScreenshot, keepAwake, userDidTakeScreenshot, } from 'react-native-screen-capture';

// disable screenshots
disallowScreenshot(true);

// enable screenshots
disallowScreenshot(false);

// Keep awake true
keepAwake(true);

// Keep awake false
keepAwake(false);

// userDidTakeScreenshot
// function to execute when user did a screenshot (ios only)
const onScreenshot = () => {
   console.log("Hey, screenshot detected!");
};
// its important have an "unsubscribe" to remove listener from screen is dismounted
const eventListener = userDidTakeScreenshot(onScreenshot);
eventListener.remove();
```

## Roadmap

|   Status   | Platform | Goal                    |
| :--------: | :------: | :---------------------- |
|     ✅     | Android  | Screenshot disable      |
|     ✅     | iOS      | Screenshot disable      |
|     ✅     | Android  | Keep awake on or off    |
|     ✅     | iOS      | Keep awake on or off    |
|     🚧     | Android  | Record capture disable  |
|     🚧     | iOS      | Record capture disable  |
|     🚧     | Android  | Screenshot callback     |
|     ✅     | iOS      | Screenshot callback     |
|     🚧     | Android  | Record capture callback |
|     🚧     | iOS      | Record capture callback |

## Contributing

See the [contributing guide](CONTRIBUTING.md) to learn how to contribute to the repository and the development workflow.

## License

MIT
