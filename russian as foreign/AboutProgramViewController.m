//
//  AboutProgramViewController.m
//  russian as foreign
//
//  Created by Lion User on 13.09.12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "AboutProgramViewController.h"

@interface AboutProgramViewController ()

@end

@implementation AboutProgramViewController
@synthesize navigationBar;
@synthesize backButton;
@synthesize aboutProgramTextView;

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
    [navigationBar setBackgroundImage:[UIImage imageNamed:@"NavigationBar.png"] forBarMetrics:UIBarMetricsDefault];
    [navigationBar setFrame:CGRectMake(0, 0, 480, 38)];
    [aboutProgramTextView setText:[NSString stringWithFormat:@"Русский как иностранный.\n Версия 0.0.1"]];
    
}

- (void)viewDidUnload
{
    [self setNavigationBar:nil];
    [self setBackButton:nil];
    [self setAboutProgramTextView:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (IBAction)backButtonSelector:(id)sender {
    [self.navigationController popViewControllerAnimated:YES];
}
@end
