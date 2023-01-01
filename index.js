// main index.js

import { NativeModules, NativeEventEmitter, } from 'react-native';

export const { ScreenCapture } = NativeModules;

export const disallowScreenshot = ScreenCapture.disallowScreenshot
export const keepAwake = ScreenCapture.keepAwake