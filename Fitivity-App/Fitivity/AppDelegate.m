//
//  AppDelegate.m
//  Fitivity
//
//  Created by Nathaniel Doe on 7/10/12.
//  Copyright (c) 2012 Fitivity. All rights reserved.
//

#import "AppDelegate.h"
#import "OpeningLogoViewController.h"
#import "LoginViewController.h"
#import "StreamViewController.h"

@implementation AppDelegate

@synthesize window = _window;
@synthesize openingView = _openingView;
@synthesize loginView = _loginView;
@synthesize streamView = _streamView;

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
	
	//Initialize the first two view controllers
	self.openingView = [[OpeningLogoViewController alloc] initWithNibName:@"OpeningLogoViewController" bundle:nil];
	self.loginView = [[LoginViewController alloc] initWithNibName:@"LoginViewController" bundle:nil];
	self.streamView = [[StreamViewController alloc] initWithNibName:@"StreamViewController" bundle:nil];
	
	[self.openingView setDelegate:self];
	
	UINavigationController *navController = [[UINavigationController alloc] initWithRootViewController:self.streamView];
	self.window.rootViewController = navController;
	self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
	
	[self.streamView presentModalViewController:self.loginView animated:YES]; 
	
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
	// Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
	// Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
	// Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
	// If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
	// Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
	// Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
	// Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

#pragma mark - OpeningLogoViewController Delegate

//	Once the logo is annimated into the place the login controller will be
//	we fade in the login view controller.
-(void)viewHasFinishedAnnimating:(OpeningLogoViewController *)view {

}

#pragma mark - PFLoginViewController Delegate

/*!
 Sent to the delegate to determine whether the log in request should be submitted to the server.
 @param username the username the user tries to log in with.
 @param password the password the user tries to log in with.
 @result a boolean indicating whether the log in should proceed.
 */
- (BOOL)logInViewController:(PFLogInViewController *)logInController shouldBeginLogInWithUsername:(NSString *)username password:(NSString *)password {
	
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


@end
