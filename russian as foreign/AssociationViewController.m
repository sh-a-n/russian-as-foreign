//
//  AssociationViewController.m
//  russian as foreign
//
//  Created by Lion User on 10.09.12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "AssociationViewController.h"

@interface AssociationViewController ()

@end

@implementation AssociationViewController
@synthesize navigationBar;
@synthesize cancelNavigationButton;
@synthesize okNavigationButton;
@synthesize toolBar;
@synthesize timerLabel;
@synthesize timerBack;
@synthesize firstWordsButtons;
@synthesize secondWordsButtons;
@synthesize firstWords;
@synthesize secondWords;
@synthesize words;
@synthesize firstWordsButton1;
@synthesize firstWordsButton2;
@synthesize firstWordsButton3;
@synthesize firstWordsButton4;
@synthesize secondWordsButton1;
@synthesize secondWordsButton2;
@synthesize secondWordsButton3;
@synthesize secondWordsButton4;


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
    firstWordsButtons = [NSArray arrayWithObjects:firstWordsButton1,firstWordsButton2,firstWordsButton3,firstWordsButton4, nil];
    secondWordsButtons = [NSArray arrayWithObjects:secondWordsButton1,secondWordsButton2,secondWordsButton3,secondWordsButton4, nil];
    firstWords = [NSArray arrayWithObjects:@"1",@"2",@"3",@"4",@"5",@"6",@"7",@"8", nil];
    secondWords = [NSArray arrayWithObjects:@"11",@"12",@"13",@"14",@"15",@"16",@"17",@"18", nil];
    
    words = [[NSMutableDictionary alloc] init];
    
    for (int i=0; i<4; i++) {
        UIButton * button = (UIButton*)[firstWordsButtons objectAtIndex:i];
        [button setTitle:[firstWords objectAtIndex:i] forState:UIControlStateNormal];
        //[[secondWordsButtons objectAtIndex:i] setTitle:[secondWords objectAtIndex:i]];
        button = (UIButton*)[secondWordsButtons objectAtIndex:i];
        [button setTitle:[secondWords objectAtIndex:i] forState:UIControlStateNormal];
    }
}

- (void)viewDidUnload
{
    [self setNavigationBar:nil];
    [self setCancelNavigationButton:nil];
    [self setOkNavigationButton:nil];
    [self setToolBar:nil];
    [self setTimerLabel:nil];
    [self setTimerBack:nil];
    [self setFirstWordsButton1:nil];
    [self setFirstWordsButton2:nil];
    [self setFirstWordsButton3:nil];
    [self setFirstWordsButton4:nil];
    [self setSecondWordsButton1:nil];
    [self setSecondWordsButton2:nil];
    [self setSecondWordsButton3:nil];
    [self setSecondWordsButton4:nil];
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
