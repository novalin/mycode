//
//  SenderViewController.m
//  Sender
//
//  Created by Ajay Patel on 6/22/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "SenderViewController.h"

@implementation SenderViewController

@synthesize textBox;

- (void)dealloc
{
    [textBox dealloc];
    [super dealloc];
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

/*
// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad
{
    [super viewDidLoad];
}
*/

-(IBAction) openMaps:(id)sender {
    // Opens a map containing Envato's HeadQuarters
    UIApplication *ourApplication = [UIApplication sharedApplication];
    NSString *ourPath = @"http://maps.google.com/maps?ll=-37.812022,144.969277";
    NSURL *ourURL = [NSURL URLWithString:ourPath];
    [ourApplication openURL:ourURL];
}

-(IBAction) openYoutube:(id)sender {
    // Opens a video of an iPad 2 Commercial
    UIApplication *ourApplication = [UIApplication sharedApplication];
    NSString *ourPath = @"http://www.youtube.com/watch?v=TFFkK2SmPg4";
    NSURL *ourURL = [NSURL URLWithString:ourPath];
    [ourApplication openURL:ourURL];
}

-(IBAction) openReceiverApp:(id)sender {
    // Opens the Receiver app if installed, otherwise displays an error
    UIApplication *ourApplication = [UIApplication sharedApplication];
    NSString *URLEncodedText = [self.textBox.text stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
    NSString *ourPath = [@"readtext2://" stringByAppendingString:URLEncodedText];
    NSURL *ourURL = [NSURL URLWithString:ourPath];
    if ([ourApplication canOpenURL:ourURL]) {
        [ourApplication openURL:ourURL];
    }
    else {
        //Display error
        UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"Receiver Not Found" message:@"The Receiver App is not installed. It must be installed to send text." delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
        [alertView show];
        [alertView release];
    }
    
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
    self.textBox = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
