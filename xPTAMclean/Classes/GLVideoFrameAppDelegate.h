

#import <UIKit/UIKit.h>

@class EAGLView;

@class videoViewController;

@interface GLVideoFrameAppDelegate : NSObject <UIApplicationDelegate> {
   /* UIWindow *window;
    EAGLView *glView;
	IBOutlet UILabel *userString;
    videoViewController *viewController;*/
}

@property (nonatomic, retain) /*IBOutlet*/ UIWindow *window;
@property (nonatomic, retain) /*IBOutlet*/ EAGLView *glView;
@property (nonatomic, retain) IBOutlet UILabel *userString;
@property (nonatomic, retain) /*IBOutlet*/ videoViewController *viewController;

@end

