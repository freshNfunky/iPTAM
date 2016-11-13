

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
    NSLog (@"%s", __PRETTY_FUNCTION__);
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    videoViewController * viewController = [[videoViewController alloc] initWithNibName:@"videoViewController" bundle:nil];
    self.window.rootViewController = viewController;
    [self.window makeKeyAndVisible];
    
    
    /*NSLog(@"------- Hello world");
    CGRect viewRect = [[UIScreen mainScreen] bounds];
    self.window = [[UIWindow alloc] initWithFrame:viewRect];*/
    
   /* self.viewController = [[videoViewController alloc] init];
    
    [self.window makeKeyAndVisible];*/
    
    
   
    //self.window.rootViewController = self.viewController;
    
   /*NSArray *windows = [[UIApplication sharedApplication] windows];
    for(UIWindow *window in windows) {
        NSLog(@"window: %@",window.description);
        if(window.rootViewController == nil){
            UIViewController* vc = [[UIViewController alloc]initWithNibName:nil bundle:nil];
            window.rootViewController = vc;
        }
    }*/
    
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
