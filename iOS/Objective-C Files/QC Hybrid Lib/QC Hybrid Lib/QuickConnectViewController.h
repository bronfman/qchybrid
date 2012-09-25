/*
 Copyright (c) 2008, 2009, 2012 Lee Barney
 Permission is hereby granted, free of charge, to any person obtaining a 
 copy of this software and associated documentation files (the "Software"), 
 to deal in the Software without restriction, including without limitation the 
 rights to use, copy, modify, merge, publish, distribute, sublicense, 
 and/or sell copies of the Software, and to permit persons to whom the Software 
 is furnished to do so, subject to the following conditions:
 
 The above copyright notice and this permission notice shall be 
 included in all copies or substantial portions of the Software.
 
 
 
 
 THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, 
 INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A 
 PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT 
 HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF 
 CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE 
 OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
 
 
 */

//#define DEBUG


#import <UIKit/UIKit.h>
#import <CoreLocation/CoreLocation.h>
#if __IPHONE_OS_VERSION_MIN_REQUIRED > __IPHONE_4_0
#import <iAd/iAd.h>
#import <QuickLook/QuickLook.h>
#endif

#import <AVFoundation/AVFoundation.h>



@class AudioRecorder;


#import <GameKit/GameKit.h>

@class QCStorePurchaseRequestDelegate;
@class DeviceWebView;
@class QuickConnect;
@class InterlayerMessageSystem;

#define kAccelerometerFrequency		2 //Hz
#if __IPHONE_OS_VERSION_MIN_REQUIRED > __IPHONE_4_0
@interface QuickConnectViewController : UIViewController<ADBannerViewDelegate,GKPeerPickerControllerDelegate,UIAccelerometerDelegate, UIWebViewDelegate, UINavigationBarDelegate, CLLocationManagerDelegate, UIPickerViewDelegate, UIImagePickerControllerDelegate, UITabBarDelegate>  {
    QLPreviewController *previewer;
#else
@interface QuickConnectViewController : UIViewController<GKPeerPickerControllerDelegate,UIAccelerometerDelegate, UIWebViewDelegate, UINavigationBarDelegate, CLLocationManagerDelegate, UIPickerViewDelegate, UIImagePickerControllerDelegate, UITabBarDelegate>  {
#endif
	BOOL activateAccelerometer;
	BOOL activateCompass;
	BOOL shouldAutoRotate;
	DeviceWebView *webView;
    UIWindow *window;
	UIToolbar *toolbar;
	CLLocationManager *locationManager;
    AVAudioRecorder *audioRecorder;
	NSMutableDictionary *audioPlayers;
	NSMutableDictionary *databases;
	
	
	NSMutableDictionary *nativeFooters;
	NSMutableDictionary *nativeHeaders;
	NSMutableDictionary *nativeButtons;
	
	NSMutableDictionary *shownFooters;
	
	QCStorePurchaseRequestDelegate *purchaseDelegate;
	
	GKPeerPickerController *thePicker;
	GKSession *theSession;
	NSMutableArray *thePeers;
	
	
	UIImageView* imageView;
    UIImagePickerController* imagePickerController;
	
	UIActivityIndicatorView *activityIndicator;
	
	
	UITabBar *tabbar;
    
    NSOperationQueue *messagePollingQueue;
	
#if __IPHONE_OS_VERSION_MIN_REQUIRED > __IPHONE_4_0
	ADBannerView *bannerView;
#endif
	CGPoint bannerPosition;
	BOOL bannerIsVisible;
	int bannerLocation;  // 0-TOP 1-BOTTOM 2-OTHER
	float bannerPortraitY;
	float bannerLandscapeY;
	QuickConnect *theHandler;
	
}
    
#if __IPHONE_OS_VERSION_MIN_REQUIRED > __IPHONE_4_0
    @property (nonatomic, retain) QLPreviewController *previewer;
#endif
	
@property (nonatomic, retain) QuickConnect *theHandler;
    @property (nonatomic, retain) InterlayerMessageSystem *messagingSystem;
@property (readwrite) BOOL activateAccelerometer;
@property (readwrite) BOOL activateCompass;
@property (readwrite) BOOL shouldAutoRotate;
@property (nonatomic, retain) DeviceWebView *webView;
@property (nonatomic, retain) UIWindow *window;
@property (nonatomic, retain) CLLocationManager *locationManager;
@property (nonatomic, retain) AVAudioRecorder *audioRecorder;
@property (nonatomic, retain) NSMutableDictionary *audioPlayers;
@property (nonatomic, retain) NSMutableDictionary *databases;
//@property (nonatomic, retain) NSMutableDictionary *httpServers;

@property (nonatomic, retain) NSMutableDictionary *nativeHeaders;
@property (nonatomic, retain) NSMutableDictionary *nativeFooters;
@property (nonatomic, retain) NSMutableDictionary *nativeButtons;


@property (nonatomic, retain) NSMutableDictionary *shownFooters;

@property (nonatomic, retain) QCStorePurchaseRequestDelegate *purchaseDelegate;


@property (nonatomic, retain) GKPeerPickerController *thePicker;
@property (nonatomic, retain) GKSession *theSession;
@property (nonatomic, retain) NSMutableArray *thePeers;

@property (nonatomic, retain) UIImageView* imageView;
@property (nonatomic, retain) UIImagePickerController* imagePickerController;


@property (nonatomic, retain) UIActivityIndicatorView *activityIndicator;

@property (nonatomic, retain) UITabBar *tabbar;
    
    
@property (nonatomic, retain) NSOperationQueue *messagePollingQueue;

#if __IPHONE_OS_VERSION_MIN_REQUIRED > __IPHONE_4_0
@property (nonatomic, retain) ADBannerView *bannerView;
#endif
@property CGPoint bannerPosition;
@property (readwrite) BOOL bannerIsVisible;
@property (readwrite) int bannerLocation;
@property (readwrite) float bannerPortraitY;
@property (readwrite) float bannerLandscapeY;

- (void) mapCommands;
- (void) addWebViewToWindow:(UIWindow*) aWindow;
- (void) designTabBar:(NSArray*) parameters;
- (void) tabBar:(UITabBar *)tabBar didSelectItem:(UITabBarItem *)item;
- (void) sendTokenToProvider:(NSData *)devToken;
- (void) pushNotificationToJavaScript:(NSDictionary *)userInfo;
- (void) closeDown;
@end

void doNothing(NSString * message, ...);