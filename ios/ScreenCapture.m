// ScreenCapture.m

#import "ScreenCapture.h"

@implementation ScreenCapture {
    BOOL dev;
    UITextField *secureTextField;
}

- (dispatch_queue_t)methodQueue {
    dev = NO;
    if (dev) NSLog(@"[SC] methodQueue");
    return dispatch_get_main_queue();
}

+ (BOOL)requiresMainQueueSetup {
    return YES;
}

#pragma mark - reactnative -

RCT_EXPORT_MODULE();

RCT_EXPORT_METHOD(keepAwake:(BOOL)status)
{
    if (dev) NSLog(@"[SC] keepAwake with %@", status ? @"YES" : @"NO");
    dispatch_async(dispatch_get_main_queue(), ^{
        [[UIApplication sharedApplication] setIdleTimerDisabled:status];
    });
}

RCT_EXPORT_METHOD(disallowScreenshot:(BOOL)status)
{
    if (dev) NSLog(@"[SC] disallowScreenshot with %@", status ? @"YES" : @"NO");
    if (self->secureTextField == nil) {
        self->secureTextField = [[UITextField alloc] init];
        self->secureTextField.userInteractionEnabled = false;
        UIWindow *window = [[[UIApplication sharedApplication] delegate] window];
        [window addSubview:self->secureTextField];
        [window.layer.superlayer addSublayer:self->secureTextField.layer];
        [self->secureTextField.layer.sublayers.firstObject addSublayer:window.layer];
    }
    [self->secureTextField setSecureTextEntry:status];
}

@end
