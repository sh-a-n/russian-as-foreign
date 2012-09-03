//
//  GroupingViewController.m
//  русский как иностранный
//
//  Created by Lion User on 28.08.12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "GroupingViewController.h"

@interface GroupingViewController ()

@end

@implementation GroupingViewController
@synthesize navigationBar;
@synthesize abortButton;
@synthesize toolBar;
@synthesize timerBack;
@synthesize timerLabel;
@synthesize WordLabel;
@synthesize Button1;
@synthesize Button2;
@synthesize Button3;
@synthesize CheckButton;
@synthesize ToolBarGrupps;
@synthesize RedButton;
@synthesize BlueButton;
@synthesize RedButtonLabel;
@synthesize GreenButton;
@synthesize BlueButtonLabel;
@synthesize GreenButtonLabel;
@synthesize first;
@synthesize second;
@synthesize third;
@synthesize sourse;

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
    [timerBack setFrame:CGRectMake(0, 0, 58, 31)];
    [timerLabel setFrame:CGRectMake(0, 0, 58, 31)];
    [navigationBar setFrame:CGRectMake(58, 0, 422, 38)];
    [toolBar setFrame:CGRectMake(0, 245, 480, 55)];
    [ToolBarGrupps setFrame:CGRectMake(0, 31, 480, 40)];
    [navigationBar setBackgroundImage:[UIImage imageNamed:@"navigationBar.png"] forBarMetrics:UIBarMetricsDefault];
    [toolBar setBackgroundImage:[UIImage imageNamed:@"tabBar.png"] forToolbarPosition:UIToolbarPositionAny barMetrics:UIBarMetricsDefault];
    /*first = [[NSMutableArray alloc]init];
    second = [[NSMutableArray alloc]init];
    third = [[NSMutableArray alloc]init];*/
    //sourse
}

- (void)viewDidUnload
{
    [self setNavigationBar:nil];
    [self setAbortButton:nil];
    [self setToolBar:nil];
    [self setTimerBack:nil];
    [self setTimerLabel:nil];
    [self setWordLabel:nil];
    [self setButton1:nil];
    [self setButton2:nil];
    [self setButton3:nil];
    [self setCheckButton:nil];
    [self setToolBarGrupps:nil];
    [self setRedButton:nil];
    [self setBlueButton:nil];
    [self setGreenButton:nil];
    [self setBlueButtonLabel:nil];
    [self setGreenButtonLabel:nil];
    [self setRedButtonLabel:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return ((interfaceOrientation != UIInterfaceOrientationPortrait)&&(interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown));
}

- (IBAction)abortButtonSelector:(id)sender {
    [self.navigationController popViewControllerAnimated:YES];
}
@end
