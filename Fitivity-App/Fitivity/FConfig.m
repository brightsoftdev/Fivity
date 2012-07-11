//
//  FConfig.m
//  Fitivity
//
//  Created by Nathaniel Doe on 7/10/12.
//  Copyright (c) 2012 Fitivity. All rights reserved.
//

#import "FConfig.h"
#import "Reachability.h"

#define kFacebookAppID		@""
#define kGoogleAnalyticsID	@""

@implementation FConfig

static FConfig *instance;

#pragma mark - Singleton Instance

+ (FConfig *)instance {
	@synchronized([FConfig class]) {
		if (instance == nil) {
			instance = [[FConfig alloc] init];
		}
	}
	return instance;
}

#pragma mark - BOOL methods

- (BOOL)connected {
	//return NO; // force for offline testing
	Reachability *hostReach = [Reachability reachabilityForInternetConnection];	
	NetworkStatus netStatus = [hostReach currentReachabilityStatus];	
    return !(netStatus == NotReachable);
}

#pragma mark - NSString methods 

- (NSString *)getFacebookAppID {
	return kFacebookAppID;
}

- (NSString *)getGoogleAnalyticsID {
	return kGoogleAnalyticsID;
}

@end
