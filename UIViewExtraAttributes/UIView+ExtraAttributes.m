//
//  UIView+ExtraAttributes.m
//
//  Created by jlew on 8/28/12.
//
//  Copyright (c) 2012 Jason Lew
//  Permission is hereby granted, free of charge, to any person
//  obtaining a copy of this software and associated documentation
//  files (the "Software"), to deal in the Software without
//  restriction, including without limitation the rights to use,
//  copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the
//  Software is furnished to do so, subject to the following
//  conditions:
//
//  The above copyright notice and this permission notice shall be
//  included in all copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
//  EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES
//  OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
//  NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT
//  HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
//  WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
//  FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
//  OTHER DEALINGS IN THE SOFTWARE.

#import "UIView+ExtraAttributes.h"

@implementation UIView (ExtraAttributes)

/**
 * The coordinates of the view's top left corner
 *
 * @author Jason Lew
 *
 * @return The top left corner point
 */
- (CGPoint)topLeftCorner
{
    return self.frame.origin;
}

/**
 * The coordinates of the view's top right corner
 *
 * @author Jason Lew
 *
 * @return The top right corner point
 */
- (CGPoint)topRightCorner
{
    return CGPointMake(self.frame.origin.x + self.frame.size.width, self.frame.origin.y);
}

/**
 * The coordinates of the view's bottom left
 *
 * @author Jason Lew
 *
 * @return The bottom left corner point
 */
- (CGPoint)bottomLeftCorner
{
    return CGPointMake(self.frame.origin.x, self.frame.origin.y + self.frame.size.height);
}

/**
 * The coordinates of the view's top bottom right corner
 *
 * @author Jason Lew
 *
 * @return The bottom right corner point
 */
- (CGPoint)bottomRightCorner
{
    return CGPointMake(self.frame.origin.x + self.frame.size.width, self.frame.origin.y + self.frame.size.height);
}

/**
 * The y-coordinate of the view's top side
 *
 * @author Jason Lew
 *
 * @return The top side y-coordinate
 */
- (CGFloat)topSideY
{
    return self.frame.origin.y;
}

/**
 * The y-coordinate of the view's bottom side
 *
 * @author Jason Lew
 *
 * @return The bottom side y-coordinate
 */
- (CGFloat)bottomSideY
{
    return self.frame.origin.y + self.frame.size.height;
}

/**
 * The x-coordinate of the view's left side
 *
 * @author Jason Lew
 *
 * @return The left side x-coordinate
 */
- (CGFloat)leftSideX
{
    return self.frame.origin.x;
}

/**
 * The x-coordinate of the view's right side
 *
 * @author Jason Lew
 *
 * @return The right side x-coordinate
 */
- (CGFloat)rightSideX
{
    return self.frame.origin.x + self.frame.size.width;
}

/**
 * The view's height
 *
 * @author Jason Lew
 *
 * @return The height
 */
- (CGFloat)height
{
    return self.frame.size.height;
}

/**
 * The view's width
 *
 * @author Jason Lew
 *
 * @return The width
 */
- (CGFloat)width
{
    return self.frame.size.width;
}

/**
 * The view's size
 *
 * @author Jason Lew
 *
 * @return The size
 */
- (CGSize)size
{
    return self.frame.size;
}

@end
