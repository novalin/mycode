//
//  SenderAppDelegate.h
//  Sender
//
//  Created by Ajay Patel on 6/22/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class SenderViewController;

@interface SenderAppDelegate : NSObject <UIApplicationDelegate> {

}

@property (nonatomic, retain) IBOutlet UIWindow *window;

@property (nonatomic, retain) IBOutlet SenderViewController *viewController;

@end
