//
//  ViewController.m
//  UIViewExtraAttributes
//
//  Created by jlew on 8/28/12.
//  Copyright (c) 2012 jlew. All rights reserved.
//

#import "ViewController.h"

#import "UIView+ExtraAttributes.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    UIView *view0 = [[UIView alloc] initWithFrame:CGRectMake(self.view.leftSideX + 200, self.view.topSideY + 200, self.view.width/4, self.view.height/4)];
    NSLog(@"view0 frame: (%f, %f, %f, %f)", view0.frame.origin.x, view0.frame.origin.y, view0.frame.size.width, view0.frame.size.height);
    view0.backgroundColor = [UIColor blueColor];
    [self.view addSubview:view0];
    
    //translucent view originating at view0's top left corner
    UIView *view1 = [[UIView alloc] initWithFrame:CGRectMake(view0.topLeftCorner.x, view0.topLeftCorner.y, 100, 100)];
    view1.backgroundColor = [[UIColor redColor] colorWithAlphaComponent:0.5];
    [self.view addSubview:view1];
    
    //translucent view originating at view0's top right corner
    UIView *view2 = [[UIView alloc] initWithFrame:CGRectMake(view0.topRightCorner.x, view0.topRightCorner.y, 50, 50)];
    view2.backgroundColor = [[UIColor purpleColor] colorWithAlphaComponent:0.5];
    [self.view addSubview:view2];
    
    //translucent view originating at view0's bottom left corner
    UIView *view3 = [[UIView alloc] initWithFrame:CGRectMake(view0.bottomLeftCorner.x, view0.bottomLeftCorner.y, 75, 75)];
    view3.backgroundColor = [[UIColor yellowColor] colorWithAlphaComponent:0.5];
    [self.view addSubview:view3];
    
    //translucent view originating at view0's bottom right corner
    UIView *view4 = [[UIView alloc] initWithFrame:CGRectMake(view0.bottomRightCorner.x, view0.bottomRightCorner.y, 25, 25)];
    view4.backgroundColor = [[UIColor greenColor] colorWithAlphaComponent:0.5];
    [self.view addSubview:view4];
    
    //display a textView with the attributes of view0
    UITextView *textView = [[UITextView alloc] initWithFrame:CGRectMake(view4.bottomRightCorner.x, view4.bottomRightCorner.y, 200, 500)];
    NSString *topLeftCornerString = [NSString stringWithFormat:@"topLeftCorner: (%f, %f)", view0.topLeftCorner.x, view0.topLeftCorner.y];
    NSString *topRightCornerString = [NSString stringWithFormat:@"topRightCorner: (%f, %f)", view0.topRightCorner.x, view0.topRightCorner.y];
    NSString *bottomRightCornerString = [NSString stringWithFormat:@"bottomRightCorner: (%f, %f)", view0.bottomRightCorner.x, view0.bottomRightCorner.y];
    NSString *bottomLeftCornerString = [NSString stringWithFormat:@"bottomLeftCorner: (%f, %f)", view0.bottomLeftCorner.x, view0.bottomLeftCorner.y];
    NSString *topSideYString = [NSString stringWithFormat:@"topSideY: %f", view0.topSideY];
    NSString *rightSideXString = [NSString stringWithFormat:@"rightSideX: %f", view0.rightSideX];
    NSString *bottomSideYString = [NSString stringWithFormat:@"bottomSideY: %f", view0.bottomSideY];
    NSString *leftSidexString = [NSString stringWithFormat:@"leftSideX: %f", view0.leftSideX];
    NSString *widthString = [NSString stringWithFormat:@"width: %f", view0.width];
    NSString *heightString = [NSString stringWithFormat:@"height: %f", view0.height];
    textView.text = [NSString stringWithFormat:@"Blue View Attributes:\n%@\n%@\n%@\n%@\n%@\n%@\n%@\n%@\n%@\n%@",
                  topLeftCornerString, topRightCornerString, bottomRightCornerString, bottomLeftCornerString,
                  topSideYString, rightSideXString, bottomSideYString, leftSidexString,
                  widthString, heightString];
    textView.scrollEnabled = NO;
    [self.view addSubview:textView];
    
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return interfaceOrientation == UIInterfaceOrientationPortrait;
}

@end
