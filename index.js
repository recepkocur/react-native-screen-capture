// main index.js

import { NativeModules, NativeEventEmitter, } from 'react-native';

export const { ScreenCapture } = NativeModules;

const eventEmitter = new NativeEventEmitter(ScreenCapture);

export const userDidTakeScreenshot = fn => {
   if (typeof(fn) !== 'function'){
      console.error('ScreenCapture, addListener requires valid callback function');
      return;
   }
   return eventEmitter?.addListener?.(
      'ScreenCapture_userDidTakeScreenshot',
      fn
   );
}

export const disallowScreenshot = ScreenCapture.disallowScreenshot
export const keepAwake = ScreenCapture.keepAwake