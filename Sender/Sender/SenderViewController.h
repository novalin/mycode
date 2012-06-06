//
//  SenderViewController.h
//  Sender
//
//  Created by Ajay Patel on 6/22/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SenderViewController : UIViewController {
    IBOutlet UITextField *textBox;
}

-(IBAction) openMaps:(id)sender;
-(IBAction) openYoutube:(id)sender;
-(IBAction) openReceiverApp:(id)sender;

@property(nonatomic, retain) IBOutlet UITextField *textBox;

@end
