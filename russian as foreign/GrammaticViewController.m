//
//  GrammaticViewController.m
//  russian as foreign
//
//  Created by Lion User on 10.09.12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "GrammaticViewController.h"

@interface GrammaticViewController ()

@end

@implementation GrammaticViewController
@synthesize navigationBar;
@synthesize cancelNavigationButton;
@synthesize okNavigationButton;
@synthesize timerBack;
@synthesize timerLabel;
@synthesize toolBar;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    [timerBack setFrame:CGRectMake(0, 0, 58, 32)];
    [timerLabel setFrame:CGRectMake(0, 0, 58, 32)];
    [navigationBar setFrame:CGRectMake(58, 0, 422, 38)];
    [toolBar setFrame:CGRectMake(0, 245, 480, 55)];
    [navigationBar setBackgroundImage:[UIImage imageNamed:@"navigationBar.png"] forBarMetrics:UIBarMetricsDefault];
    [toolBar setBackgroundImage:[UIImage imageNamed:@"tabBar.png"] forToolbarPosition:UIToolbarPositionAny barMetrics:UIBarMetricsDefault];
}

- (void)viewDidUnload
{
    [self setNavigationBar:nil];
    [self setCancelNavigationButton:nil];
    [self setOkNavigationButton:nil];
    [self setTimerBack:nil];
    [self setTimerLabel:nil];
    [self setToolBar:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return ((interfaceOrientation != UIInterfaceOrientationPortrait)&&(interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown));
}

- (IBAction)cancelButtonSelector:(id)sender {
    [self.navigationController popViewControllerAnimated:YES];
}

- (IBAction)okButtonSelector:(id)sender {
    NSArray * controllers = self.navigationController.viewControllers;
    [self.navigationController popToViewController:[controllers objectAtIndex:2] animated:YES];
}
@end
