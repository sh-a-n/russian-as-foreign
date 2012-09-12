//
//  ViewController.m
//  русский как иностранный
//
//  Created by Lion User on 27.08.12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"
#import "TrainingMenuViewController.h"
#import "AboutProgramViewController.h"


@interface ViewController ()

@end

@implementation ViewController
@synthesize trainingMenuViewController;
@synthesize aboutProgramViewController;
@synthesize bigLabel;
@synthesize smallLabel;
@synthesize trainingButton;
@synthesize testButton;
@synthesize settingsButton;
@synthesize statButton;
@synthesize aboutButton;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    self.navigationController.navigationBar.hidden = YES;  
    self.navigationController.toolbar.hidden = YES;// !!! эти две стрчки не трогаем. Будем использовать собственные navigatiobar и toolBar
    
    [testButton setEnabled:NO];
    [settingsButton setEnabled:NO];
    [statButton setEnabled:NO];
    //[aboutButton setEnabled:NO];
}

- (void)viewDidUnload
{
    [self setBigLabel:nil];
    [self setSmallLabel:nil];
    [self setTrainingButton:nil];
    [self setTestButton:nil];
    [self setSettingsButton:nil];
    [self setStatButton:nil];
    [self setAboutButton:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return ((interfaceOrientation != UIInterfaceOrientationPortrait)&&(interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown));
}

- (IBAction)trainingButtonTap:(id)sender {
    self.trainingMenuViewController = [[TrainingMenuViewController alloc]initWithNibName:@"TrainingMenuViewController" bundle:nil];
    [self.navigationController pushViewController:trainingMenuViewController animated:YES];
}

- (IBAction)testButtonTap:(id)sender {
}

- (IBAction)settingsButtonTap:(UIButton *)sender {
}

- (IBAction)statButtonTap:(id)sender {
}

- (IBAction)aboutButtonTap:(id)sender {
    self.aboutProgramViewController = [[AboutProgramViewController alloc]initWithNibName:@"AboutProgramViewController" bundle:nil];
    [self.navigationController pushViewController:aboutProgramViewController animated:YES];
}
@end
