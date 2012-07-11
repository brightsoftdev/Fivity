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
	
	self.fields = PFLogInFieldsUsernameAndPassword | PFLogInFieldsLogInButton | PFLogInFieldsSignUpButton | PFLogInFieldsLogInButton | PFLogInFieldsFacebook;
	
	UIImageView *logoImage = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"FitivityLogo.png"]];
	logoImage.frame = CGRectMake(self.logInView.logo.frame.origin.x, self.logInView.logo.frame.origin.y, self.logInView.logo.frame.size.width, self.logInView.logo.frame.size.height);
	self.logInView.logo = logoImage;
	self.view.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"background.png"]];
}

@end
