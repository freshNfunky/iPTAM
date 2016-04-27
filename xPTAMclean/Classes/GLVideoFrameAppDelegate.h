

#import <UIKit/UIKit.h>
#import "MyVideoBuffer.h"

@class EAGLView;

@interface GLVideoFrameAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    EAGLView *glView;
    MyVideoBuffer *videoBuffer;
	IBOutlet UILabel *userString;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet EAGLView *glView;
@property (nonatomic,retain) IBOutlet UILabel *userString;
@property (retain, nonatomic) IBOutlet MyVideoBuffer *videoBuffer;

@end

