//
//  FlipTransitionDemoAppDelegate.h
//  FlipTransitionDemo
//
//  Created by Andrea Ottolina on 10/08/2011.
//  Copyright 2011 Pixelinlove ltd. All rights reserved.
//

#import <UIKit/UIKit.h>

@class FlipTransitionDemoViewController;

@interface FlipTransitionDemoAppDelegate : NSObject <UIApplicationDelegate>

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet FlipTransitionDemoViewController *viewController;

@end
