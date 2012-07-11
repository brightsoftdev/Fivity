//
//  AppDelegate.h
//  Fitivity
//
//  Created by Nathaniel Doe on 7/10/12.
//  Copyright (c) 2012 Fitivity. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "OpeningLogoViewController.h"

@class LoginViewController;

@interface AppDelegate : UIResponder <UIApplicationDelegate, OpeningLogoViewControllerDelegate>

@property (strong, nonatomic) UIWindow *window;
@property (strong, nonatomic) OpeningLogoViewController *openingView;
@property (strong, nonatomic) LoginViewController *streamView;

@end
