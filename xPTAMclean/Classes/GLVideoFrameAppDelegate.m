

#import "GLVideoFrameAppDelegate.h"
#import "EAGLView.h"
#import "videoViewController.h"

@implementation GLVideoFrameAppDelegate

@synthesize window=_window;
@synthesize viewController=_viewController;
@synthesize glView;
@synthesize userString;

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
   // [glView startAnimation];
    self.window.rootViewController = self.viewController;
    return YES;
    //self.window.rootViewController = navigationController;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
  //  [glView stopAnimation];
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
  //  [glView startAnimation];
}

- (void)applicationWillTerminate:(UIApplication *)application
{
   // [glView stopAnimation];
}

- (void)dealloc
{
    [window release];
    [glView release];

    [super dealloc];
    
}

@end
