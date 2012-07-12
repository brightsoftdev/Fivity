//
//  StreamViewController.m
//  Fitivity
//
//  Created by Nathaniel Doe on 7/11/12.
//  Copyright (c) 2012 Nathaniel Doe. All rights reserved.
//

#import "StreamViewController.h"
#import "LoginViewController.h"

@interface StreamViewController ()

@end

@implementation StreamViewController

@synthesize loginView;

#pragma mark - OpeningLogoViewController Delegate

//	Once the logo is annimated into the place the login controller will be
//	we fade in the login view controller.
-(void)viewHasFinishedAnnimating:(OpeningLogoViewController *)view {	
	[self dismissModalViewControllerAnimated:YES];
}

#pragma mark - PFLoginViewController Delegate

/*!
 Sent to the delegate to determine whether the log in request should be submitted to the server.
 @param username the username the user tries to log in with.
 @param password the password the user tries to log in with.
 @result a boolean indicating whether the log in should proceed.
 */
- (BOOL)logInViewController:(PFLogInViewController *)logInController shouldBeginLogInWithUsername:(NSString *)username password:(NSString *)password {
	return NO;
}

/*! @name Responding to Actions */
/// Sent to the delegate when a PFUser is logged in.
- (void)logInViewController:(PFLogInViewController *)logInController didLogInUser:(PFUser *)user {
	[logInController dismissModalViewControllerAnimated:YES];
}

/// Sent to the delegate when the log in attempt fails.
- (void)logInViewController:(PFLogInViewController *)logInController didFailToLogInWithError:(NSError *)error {
	
}

/// Sent to the delegate when the log in screen is dismissed.
- (void)logInViewControllerDidCancelLogIn:(PFLogInViewController *)logInController {
	
}

#pragma mark - Helper Methods

- (void)login {
	if ([[FConfig instance] shouldLogIn]) {
		if (!loginView) {
			loginView = [[LoginViewController alloc] init];
			loginView.fields = PFLogInFieldsUsernameAndPassword | PFLogInFieldsLogInButton | PFLogInFieldsSignUpButton | PFLogInFieldsLogInButton | PFLogInFieldsFacebook;
			[loginView setDelegate:self];
		}
		[self presentModalViewController:loginView animated:YES];
	}
}

#pragma mark - UITableViewDelegate 

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *CellIdentifier = @"Cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
    
    return cell;
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 10;//CHANGE TO DYNAMIC 
}

#pragma mark - UITableViewDataSource 

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
}

#pragma mark - 

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        
    }
    return self;
}

- (void)viewDidAppear:(BOOL)animated {
	[self login];
}

- (void)viewDidLoad {
    [super viewDidLoad];
	
	openingViewShowing = true;
}

- (void)viewDidUnload {
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
