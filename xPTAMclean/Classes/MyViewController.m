//
//  MyViewController.m
//  xPTAM
//
//  Created by Daniel Speiser on 4/26/16.
//
//

#import "MyViewController.h"
#import "GLVideoFrameAppDelegate.h"
#import "MyVideoBuffer.h"

@interface MyViewController ()


@property (nonatomic, retain) GLVideoFrameAppDelegate * glVideoDelegate;

@end

@implementation MyViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}
- (IBAction)buttonPressed:(id)sender {
//    GLVideoFrameAppDelegate
    [_videoBuffer pressButton];
    NSLog(@"TESTING WORKS");
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
