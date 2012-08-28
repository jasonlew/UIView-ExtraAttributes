UIView-ExtraAttributes
======================

# How to Use It

1. Download the files *UIView+ExtraAttributes.h* and *UIView+ExtraAttributes.m*.
2. Add them to your Xcode project.
3. Include *UIView+ExtraAttributes.h* in your implementation file when you want to use the attributes.

# Example
4 UIViews are placed at the corners of the blue UIView.  The blue UIView's attributes are displayed.
![Screenshot](http://farm9.staticflickr.com/8441/7882027386_02356992fd_b.jpg)

Here's the code:

```obj-c
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
```

# License

Copyright (c) 2012 Jason Lew

Permission is hereby granted, free of charge, to any person
obtaining a copy of this software and associated documentation
files (the "Software"), to deal in the Software without
restriction, including without limitation the rights to use,
copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the
Software is furnished to do so, subject to the following
conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES
OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT
HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
OTHER DEALINGS IN THE SOFTWARE.

