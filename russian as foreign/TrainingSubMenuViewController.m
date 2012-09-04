//
//  TrainingSubMenuViewController.m
//  русский как иностранный
//
//  Created by Lion User on 28.08.12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "TrainingSubMenuViewController.h"
#import "ListeningViewController.h"
#import "FilmViewController.h"
#import "Picture_wordViewController.h"
#import "GroupingViewController.h"

@interface TrainingSubMenuViewController ()

@end

@implementation TrainingSubMenuViewController
@synthesize listeningViewController;
@synthesize filmViewController;
@synthesize groupingViewController;
@synthesize picture_wordViewController;
@synthesize startDate;
@synthesize navigationBarLabel;
@synthesize navigationBar;
@synthesize backButton;

@synthesize myTableView;
@synthesize timerBack;
@synthesize timerLabel;
@synthesize toolBar;
@synthesize choosed;
@synthesize timer;

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
    choosed = [[NSMutableArray alloc]init];
    [timerBack setFrame:CGRectMake(0, 0, 58, 32)];
    [timerLabel setFrame:CGRectMake(0, 0, 58, 32)];
    [navigationBar setFrame:CGRectMake(58, 0, 422, 38)];
    [toolBar setFrame:CGRectMake(0, 245, 480, 55)];
    [navigationBar setBackgroundImage:[UIImage imageNamed:@"navigationBar.png"] forBarMetrics:UIBarMetricsDefault];
    [toolBar setBackgroundImage:[UIImage imageNamed:@"tabBar.png"] forToolbarPosition:UIToolbarPositionAny barMetrics:UIBarMetricsDefault];
    self.timer = Nil;
}

- (void)viewDidUnload
{
    [self setNavigationBarLabel:nil];
    [self setNavigationBar:nil];
    [self setBackButton:nil];
    
    
    [self setMyTableView:nil];
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


- (IBAction)backButtonSelector:(id)sender {
    [self.navigationController popViewControllerAnimated:YES];
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

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.row == [choosed indexOfObject:@"Аудирование"]) {
        NSLog(@"Аудирование");
        self.listeningViewController = [[ListeningViewController alloc]initWithNibName:@"ListeningViewController" bundle:nil];
        [self.navigationController pushViewController:listeningViewController animated:YES];
    }
    else {
        if (indexPath.row == [choosed indexOfObject:@"Картинка-слово"]) {
            NSLog(@"Картинка-слово");
            self.picture_wordViewController = [[Picture_wordViewController alloc]initWithNibName:@"Picture_wordViewController" bundle:nil];
            [self.navigationController pushViewController:picture_wordViewController animated:YES];
        }
        else {
            if (indexPath.row == [choosed indexOfObject:@"Распределение по группам"]) {
                NSLog(@"Распределение по группам");
                self.groupingViewController = [[GroupingViewController alloc]initWithNibName:@"GroupingViewController" bundle:nil];
                [self.navigationController pushViewController:groupingViewController animated:YES];
            }
        }
    }
}
- (IBAction)startTimer
{
    startDate = [NSDate date];
    self.timer = [NSTimer scheduledTimerWithTimeInterval:1.0f target:self selector:@selector(tick) userInfo:nil repeats:YES];
    
}

- (void)tick
{
    NSDate *currentDate = [NSDate date];
    NSTimeInterval timeInterval = [currentDate timeIntervalSinceDate:(NSDate *)startDate];
    NSDate *timerDate = [NSDate dateWithTimeIntervalSince1970:timeInterval];
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:@"mm:ss"];
    [dateFormatter setTimeZone:[NSTimeZone timeZoneForSecondsFromGMT:0.0]];
    NSString *timeString=[dateFormatter stringFromDate:timerDate];
    timerLabel.text = timeString;
    listeningViewController.timerLabel.text = timeString;
    listeningViewController.filmViewController.timerLabel.text = timeString;
    picture_wordViewController.timerLabel.text = timeString;
    groupingViewController.timerLabel.text = timeString;
    //[dateFormatter release];
}

- (IBAction)stopTimer
{
    if ([timer isValid])
        [timer invalidate];
}

@end
