//
//  videoViewController.h
//  video
//
//  Created by Gerhard Reitmayr on 07/04/2011.
//  Copyright 2011 TU Graz. All rights reserved.
//

#import <UIKit/UIKit.h>

#import <OpenGLES/EAGL.h>

#import <OpenGLES/ES1/gl.h>
#import <OpenGLES/ES1/glext.h>


#import "Camera.h"

@class EAGLView;

@class videoViewController;

@interface videoViewController : UIViewController<CameraDelegate> {
@private
    EAGLContext *context;
    EAGLView *glView;
    Camera * camera;
    GLuint videoFrameTexture;
}
@property(nonatomic, retain) /*IBOutlet*/ EAGLView *glView;
@end
