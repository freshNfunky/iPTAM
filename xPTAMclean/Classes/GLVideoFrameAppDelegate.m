

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
     NSLog(@"Hello world");
    CGRect viewRect = [[UIScreen mainScreen] bounds];
    self.window = [[UIWindow alloc] initWithFrame:viewRect];
    
    self.viewController = [[videoViewController alloc] init];
    self.window.rootViewController = self.viewController;
    
    [self.window makeKeyAndVisible];
   
    
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
    [_window release];
    [_viewController release];
    [super dealloc];
    
}

@end
