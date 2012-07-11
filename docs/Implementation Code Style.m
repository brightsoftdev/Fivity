//
//  SomeViewController.m
//  Fitivity
//
//  Created by Nathaniel Doe on 7/10/12.
//  Copyright (c) 2012 Fitivity. All rights reserved.
//

#import "SomeViewController.h"

@interface SomeViewController ()

@end

@implementation SomeViewController

//Synthesize any properties
@synthesize logo;
@synthesize delegate;

// Use pragma mark - to group similar methods to make it easy to use the fast navigator
#pragam mark - Helper Methods 

- (void)doSomething {
	NSLog("Did Something");
} 

#pragma mark - View Life Cycle

//Open parenthesis on the same line as the method signature
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)viewDidUnload {
    [self setLogo:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
