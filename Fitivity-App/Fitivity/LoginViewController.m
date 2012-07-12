//
//  LoginViewController.m
//  Fitivity
//
//  Created by Nathaniel Doe on 7/10/12.
//  Copyright (c) 2012 Fitivity. All rights reserved.
//

#import "LoginViewController.h"

@interface LoginViewController ()

@end

@implementation LoginViewController

#pragma mark - 

- (void)viewDidLoad {
    [super viewDidLoad];
	
	UIImageView *logoImage = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"FitivityLogo.png"]];
	logoImage.frame = CGRectMake(0, 0, 225, 100);
	self.logInView.logo = logoImage;
	self.view.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"background.png"]];
	self.signUpController.view.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"background.png"]];
}

@end
