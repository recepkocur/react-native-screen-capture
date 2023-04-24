/**
 * disallowScreenshot
 * 
 * Allows you to protect screens in your app from being captured or recorded,
 * as well as be notified if a screenshot is taken while your app is foregrounded.
 * 
 * ```
 *   // Disable screenshots
 *   disallowScreenshot(true);
 *   // Enable screenshots
 *   disallowScreenshot(false);
 *```
 */
export declare const disallowScreenshot: (value: boolean) => void

/**
 * keepAwake 
 * 
 * Keep the screen from going to sleep. iOS and Android.
 * 
 * ```
 *   // Keep awake true
 *   keepAwake(true);
 *   // Keep awake false
 *   keepAwake(false);
 *```
 */
export declare const keepAwake: (value: boolean) => void
