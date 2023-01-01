// ScreenCapture.m

// #import <React/RCTLog.h>
// RCTLogInfo(@"Example Log");

#import "ScreenCapture.h"

@implementation ScreenCapture {
    BOOL hasListeners;
    BOOL dev;
    UITextField *secureTextField;
}

- (dispatch_queue_t)methodQueue {
    if (dev) NSLog(@"[SC] methodQueue");
    return dispatch_get_main_queue();
}

+ (BOOL)requiresMainQueueSetup {
    return YES;
}

- (NSArray<NSString *> *)supportedEvents {
    return @[@"ScreenCapture_userDidTakeScreenshot"];
}

- (id)init {
    dev = TRUE;
    if (dev) NSLog(@"[SC] init");
    if ((self = [super init])) {
        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(userDidTakeScreenshot:) name:UIApplicationUserDidTakeScreenshotNotification object: nil];
    }
    return self;
}

- (void)startObserving {
    if (dev) NSLog(@"[SC] startObserving");
    hasListeners = YES;
}

- (void)stopObserving {
    if (dev) NSLog(@"[SC] stopObserving");
    hasListeners = NO;
}

- (void)userDidTakeScreenshot:(NSNotification *)notification {
    if (!hasListeners) return;
    if (dev) NSLog(@"[SC] userDidTakeScreenshot");
    [self sendEventWithName:@"ScreenCapture_userDidTakeScreenshot" body:nil];
}

#pragma mark - dealloc -

- (void)dealloc {
    if (dev) NSLog(@"[SC] dealloc");
    [[NSNotificationCenter defaultCenter] removeObserver:self];
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
    @try {
        if (dev) NSLog(@"[SC] try");
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
    @catch (NSException *e) {
        if (dev) NSLog(@"[SC] catch");
    }
}

@end
