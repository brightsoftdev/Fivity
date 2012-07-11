//
//  SomeViewController.h
//  Fitivity
//
//	Brief description of class 
//
//  Created by Nathaniel Doe on 7/10/12.
//  Copyright (c) 2012 Fitivity. All rights reserved.
//

//Group Libraries together
#import <UIKit/UIKit.h>
#import <CoreLocation/CoreLocation.h>

//Ground created classes together
#import "Config.h"

@protocol SomeViewControllerDelegate;

@interface SomeViewController : UIViewController {
	//Variable Declaration - group UI(Types) and NS(Types) together
    UIImageView *logo;
    UILabel *someLabel;
    
    NSArray *someArray;
    NSString *someString;
}

//Declare class methods
- (void)doSomething;

//Declare properties
@property (weak, nonatomic) IBOutlet UIImageView *logo;
@property (nonatomic, assign) id <SomeViewControllerDelegate> delegate;

@end

//Declare protocol methods
@protocol SomeViewControllerDelegate <NSObject>

@optional
-(void)viewHasFinishedAnnimating:(OpeningLogoViewController *)view;

@end
