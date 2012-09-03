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
@synthesize choosed;
@synthesize MytableView;

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
    MytableView.hidden = YES;
    [MytableView setFrame:CGRectMake(10, 72, 460, 173)];
    first = [[NSMutableArray alloc]init];
    second = [[NSMutableArray alloc]init];
    third = [[NSMutableArray alloc]init];
    sourse = [NSMutableArray arrayWithObjects:@"бежать", @"поезд", @"пустыня", @"пустой", @"ехать",@"красивый",nil];
    WordLabel.text = [sourse objectAtIndex:0];
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
    [self setMytableView:nil];
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

- (IBAction)firstGroupButton:(id)sender {
    [first addObject:[sourse objectAtIndex:0]];
    [sourse removeObjectAtIndex:0];
    if (sourse.count) WordLabel.text = [sourse objectAtIndex:0];
    else {
        Button1.enabled = NO;
        Button2.enabled = NO;
        Button3.enabled = NO;
        WordLabel.text = @"";
    }
}

- (IBAction)secondGroupButton:(id)sender {
    [second addObject:[sourse objectAtIndex:0]];
    [sourse removeObjectAtIndex:0];
    if (sourse.count) WordLabel.text = [sourse objectAtIndex:0];
    else {
        Button1.enabled = NO;
        Button2.enabled = NO;
        Button3.enabled = NO;
        WordLabel.text = @"";
    }
}

- (IBAction)thirdGroupButton:(id)sender {
    [third addObject:[sourse objectAtIndex:0]];
    [sourse removeObjectAtIndex:0];
    if (sourse.count) WordLabel.text = [sourse objectAtIndex:0];
    else {
        Button1.enabled = NO;
        Button2.enabled = NO;
        Button3.enabled = NO;
        WordLabel.text = @"";
    }
}

- (IBAction)RedButtonSelect:(id)sender {
    if (MytableView.hidden || choosed != first){
        choosed = first;
        [MytableView reloadData];
        MytableView.hidden = NO;
    }
    else {
        if (choosed == first) MytableView.hidden = YES;
    }
}

- (IBAction)BlueButtonSelect:(id)sender {
    if (MytableView.hidden || choosed != second){
        choosed = second;
        [MytableView reloadData];
        MytableView.hidden = NO;
    }
    else {
        if (choosed == second) MytableView.hidden = YES;
    }
}

- (IBAction)GreenButtonSelect:(id)sender {
    if (MytableView.hidden || choosed != third){
        choosed = third;
        [MytableView reloadData];
        MytableView.hidden = NO;
    }
    else {
        if (choosed == third) MytableView.hidden = YES;
    }
}

- (NSInteger)numberOfsectionInTableView:(UITableView*)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [choosed count];
}

- (UITableViewCell*)tableView:(UITableView*)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
    
    cell.textLabel.text = [choosed objectAtIndex:indexPath.row];
    
    return cell;
}

- (UITableViewCellEditingStyle)tableView:(UITableView *)aTableView 
           editingStyleForRowAtIndexPath:(NSIndexPath *)indexPath 
{
        return UITableViewCellEditingStyleDelete;
}

- (void)tableView:(UITableView *)tableView 
commitEditingStyle:(UITableViewCellEditingStyle)editingStyle 
forRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    [sourse addObject:[choosed objectAtIndex:indexPath.row]];
    if (WordLabel.text == @"") {
        WordLabel.text = [sourse objectAtIndex:0];
        Button1.enabled = YES;
        Button2.enabled = YES;
        Button3.enabled = YES;
    }
    [choosed removeObjectAtIndex:indexPath.row];
    [tableView deleteRowsAtIndexPaths:[NSArray arrayWithObject:indexPath] 
    withRowAnimation:UITableViewRowAnimationFade];

}

- (NSString *)tableView:(UITableView *)tableView 
titleForDeleteConfirmationButtonForRowAtIndexPath:(NSIndexPath *)indexPath 
{
	return @"Удалить";
}

- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath { 
	return NO;
}

- (void)tableView:(UITableView *)tableView 
moveRowAtIndexPath:(NSIndexPath *)sourceIndexPath 
      toIndexPath:(NSIndexPath *)destinationIndexPath 
{ 
	[choosed exchangeObjectAtIndex:sourceIndexPath.row withObjectAtIndex:destinationIndexPath.row];
}


@end
