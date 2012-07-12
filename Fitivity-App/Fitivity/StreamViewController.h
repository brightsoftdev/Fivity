//
//  StreamViewController.h
//  Fitivity
//
//  Created by Nathaniel Doe on 7/11/12.
//  Copyright (c) 2012 Nathaniel Doe. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Parse/Parse.h>

#import "OpeningLogoViewController.h"

@class LoginViewController;

@interface StreamViewController : UIViewController <UITableViewDelegate, UITableViewDataSource, PFLogInViewControllerDelegate, OpeningLogoViewControllerDelegate> {
	BOOL openingViewShowing;
}

@property (nonatomic, retain) LoginViewController *loginView;

@end
