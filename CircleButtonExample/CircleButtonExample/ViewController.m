//
//  ViewController.m
//  CircleButtonExample
//
//  Created by Vitaliy Gozhenko on 30/08/15.
//  Copyright (c) 2015 VitaliyGozhenko. All rights reserved.
//

#import "ViewController.h"
#import "CircleButton.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet CircleButton *circleButtonBig;
@property (weak, nonatomic) IBOutlet CircleButton *button1;
@property (weak, nonatomic) IBOutlet CircleButton *button2;
@property (weak, nonatomic) IBOutlet CircleButton *button3;

@end

@implementation ViewController

- (void)viewDidLoad {
	[super viewDidLoad];

	[self.button1 setCircleColor:[UIColor blueColor] forState:UIControlStateNormal];

	self.button2.layer.shadowColor = [UIColor blackColor].CGColor;
	self.button2.layer.shadowOffset = CGSizeMake(1, 1);
	self.button2.layer.shadowRadius = 3;
	self.button2.layer.shadowOpacity = 0.7;
	self.button2.borderWidth = 0.5;
	[self.button2 setCircleColor:[UIColor yellowColor] forState:UIControlStateNormal];
	[self.button2 setCircleColor:[UIColor greenColor] forState:UIControlStateHighlighted];
	[self.button2 setBorderColor:[UIColor orangeColor] forState:UIControlStateNormal];


	self.button3.borderWidth = 1;
	self.button3.adjustsImageWhenHighlighted = NO;
	[self.button3 setCircleColor:[UIColor brownColor] forState:UIControlStateNormal];
	[self.button3 setCircleColor:[UIColor darkGrayColor] forState:UIControlStateSelected];
	[self.button3 setBorderColor:[UIColor yellowColor] forState:UIControlStateNormal];
	[self.button3 setBorderColor:[UIColor blackColor] forState:UIControlStateSelected];

	[self.circleButtonBig setCircleColor:[UIColor lightGrayColor] forState:UIControlStateNormal];
	self.circleButtonBig.clipTouchesToCircle = NO;

}

- (void)didReceiveMemoryWarning {
	[super didReceiveMemoryWarning];
	// Dispose of any resources that can be recreated.
}

- (IBAction)button3Touch:(id)sender {
	[sender setSelected:![sender isSelected]];
}

@end
