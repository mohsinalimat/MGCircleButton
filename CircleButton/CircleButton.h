//
//  CircleButton.h
//
//  Created by Vitaliy Gozhenko on 2/3/15.
//  Copyright (c) 2015 Vitaliy Gozhenko. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CircleButton : UIButton

@property (assign, nonatomic) CGFloat borderWidth;
@property (assign, nonatomic) BOOL clipTouchesToCircle;

- (void)setCircleColor:(UIColor *)color forState:(UIControlState)state;
- (UIColor *)circleColorForState:(UIControlState)state;

- (void)setBorderColor:(UIColor *)color forState:(UIControlState)state;
- (UIColor *)borderColorForState:(UIControlState)state;

@end
