//
//  ReceiverAppDelegate.h
//  Receiver
//
//  Created by Ajay Patel on 6/22/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class ReceiverViewController;

@interface ReceiverAppDelegate : NSObject <UIApplicationDelegate> {

}

@property (nonatomic, retain) IBOutlet UIWindow *window;

@property (nonatomic, retain) IBOutlet ReceiverViewController *viewController;

@end
