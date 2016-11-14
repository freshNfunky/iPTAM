

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
    NSArray *windows = [[UIApplication sharedApplication] windows];
    for(UIWindow *rwindow in windows) {
        NSLog(@"window: %@",window.description);
        if(rwindow.rootViewController == nil){
            //UIViewController* vc = [[UIViewController alloc]initWithNibName:nil bundle:nil];
            rwindow.rootViewController = _viewController;
        }
    }
    
    self.window = [[UIWindow alloc] initWithFrame:UIScreen.mainScreen.bounds];
    
    //UIViewController *viewController = _viewController; // determine the initial view controller here and instantiate it with [storyboard instantiateViewControllerWithIdentifier:];
    UIViewController *viewController = [[UIViewController alloc]initWithNibName:nil bundle:nil];
    
    self.window.rootViewController = viewController;//making a view to root view
    [self.window makeKeyAndVisible];
    
    return YES;
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
