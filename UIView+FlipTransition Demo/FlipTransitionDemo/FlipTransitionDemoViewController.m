//
//  FlipTransitionDemoViewController.m
//  FlipTransitionDemo
//
//  Created by Andrea Ottolina on 10/08/2011.
//  Copyright 2011 Pixelinlove ltd. All rights reserved.
//

#import "FlipTransitionDemoViewController.h"

@interface FlipTransitionDemoViewController ()

- (void)handleTap:(UITapGestureRecognizer *)sender;

@end

@implementation FlipTransitionDemoViewController

@synthesize firstView;
@synthesize secondView;

#pragma mark - View lifecycle

- (void)viewDidUnload
{
    [super viewDidUnload];
    self.firstView = nil;
	self.secondView = nil;
}

- (void)dealloc
{
    [firstView release];
    [secondView release];
    [super dealloc];
}

- (void)viewDidLoad
{
	secondView.hidden = YES;
	
	UITapGestureRecognizer *tapRecognizer = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(handleTap:)];
	[self.view addGestureRecognizer:tapRecognizer];
	[tapRecognizer release];
}

- (void)handleTap:(UITapGestureRecognizer *)recognizer
{   
    if (recognizer.state == UIGestureRecognizerStateEnded)
    {
        [UIView flipTransitionFromView:firstView toView:secondView duration:1.0f completion:NULL];
    }
}

@end
