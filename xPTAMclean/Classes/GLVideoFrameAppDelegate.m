

#import "GLVideoFrameAppDelegate.h"
#import "EAGLView.h"
#import "MyViewController.h"

@implementation GLVideoFrameAppDelegate

@synthesize window=_window;
@synthesize viewController=_viewController;
@synthesize glView;
@synthesize userString;

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{


    MyViewController* vc = [[MyViewController alloc] init];
    vc.videoBuffer = self.videoBuffer;
    self.window.rootViewController = vc;

//    AddTaskViewController *add = [[AddTaskViewController alloc]
//                                  initWithNibName:@"AddTaskView" bundle:nil];
//    [self presentViewController:add animated:YES completion:nil];

   // [glView startAnimation];

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
    [window release];
    [glView release];

    [_videoBuffer release];
    [super dealloc];

}

@end
