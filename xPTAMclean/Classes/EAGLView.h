#import <UIKit/UIKit.h>
#import <QuartzCore/QuartzCore.h>

#import "ESRenderer.h"

// ----->
#import <OpenGLES/ES2/gl.h>
#import <OpenGLES/ES2/glext.h>

@class EAGLContext;
// <----

// This class wraps the CAEAGLLayer from CoreAnimation into a convenient UIView subclass.
// The view content is basically an EAGL surface you render your OpenGL scene into.
// Note that setting the view non-opaque will only work if the EAGL surface has an alpha channel.
@interface EAGLView : UIView
{    
	
@private
    id <ESRenderer> renderer;

    BOOL animating;
    NSInteger animationFrameInterval;
    // Use of the CADisplayLink class is the preferred method for controlling your animation timing.
    // CADisplayLink will link to the main display and fire every vsync when added to a given run-loop.
    id displayLink;
// ----->
    GLuint defaultFramebuffer, colorRenderbuffer;
// <-----
}

@property (readonly, nonatomic, getter=isAnimating) BOOL animating;
@property (nonatomic) NSInteger animationFrameInterval;

//---->
@property (nonatomic, retain) EAGLContext *context;
// The pixel dimensions of the CAEAGLLayer.
@property (readonly) GLint framebufferWidth;
@property (readonly) GLint framebufferHeight;
//<----
 
- (void)startAnimation;
- (void)stopAnimation;
- (void)drawView:(id)sender;
//---->
- (void)setContext:(EAGLContext *)newContext;
- (void)setFramebuffer;
- (BOOL)presentFramebuffer;
- (void)initContext;
//<----

@end

