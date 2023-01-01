// ScreenCaptureModule.java

package com.recepkocur.screencapture;

import android.app.Activity;
import android.view.WindowManager;

import com.facebook.react.bridge.ReactApplicationContext;
import com.facebook.react.bridge.ReactContextBaseJavaModule;
import com.facebook.react.bridge.ReactMethod;
import com.facebook.react.bridge.Callback;

public class ScreenCaptureModule extends ReactContextBaseJavaModule {

    private final ReactApplicationContext reactContext;

    public ScreenCaptureModule(ReactApplicationContext reactContext) {
        super(reactContext);
        this.reactContext = reactContext;
    }

    @Override
    public String getName() {
        return "ScreenCapture";
    }

    // @ReactMethod
    // public void sampleMethod(String stringArgument, int numberArgument, Callback callback) {
    //     // TODO: Implement some actually useful functionality
    //     callback.invoke("Received numberArgument: " + numberArgument + " stringArgument: " + stringArgument);
    // }

    @ReactMethod
    public void disallowScreenshot(Boolean status) {
        if (this.reactContext.hasCurrentActivity()) {
            if (status == true) {
                this.reactContext.getCurrentActivity().runOnUiThread(new Runnable() {
                    @Override
                    public void run() {
                        reactContext.getCurrentActivity().getWindow().addFlags(WindowManager.LayoutParams.FLAG_SECURE);
                    }
                });
            } else {
                this.reactContext.getCurrentActivity().runOnUiThread(new Runnable() {
                    @Override
                    public void run() {
                        reactContext.getCurrentActivity().getWindow().clearFlags(WindowManager.LayoutParams.FLAG_SECURE);
                    }
                });
            }
        }
    }

    @ReactMethod
    public void keepAwake(Boolean status) {
        if (this.reactContext.hasCurrentActivity()) {
            if (status == true) {
                this.reactContext.getCurrentActivity().runOnUiThread(new Runnable() {
                    @Override
                    public void run() {
                        reactContext.getCurrentActivity().getWindow().addFlags(WindowManager.LayoutParams.FLAG_KEEP_SCREEN_ON);
                    }
                });
            } else {
                this.reactContext.getCurrentActivity().runOnUiThread(new Runnable() {
                    @Override
                    public void run() {
                        reactContext.getCurrentActivity().getWindow().clearFlags(WindowManager.LayoutParams.FLAG_KEEP_SCREEN_ON);
                    }
                });
            }
        }
    }
}