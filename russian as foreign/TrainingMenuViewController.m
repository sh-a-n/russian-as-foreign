//
//  TrainingMenuViewController.m
//  русский как иностранный
//
//  Created by Lion User on 28.08.12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "TrainingMenuViewController.h"
#import "TrainingSubMenuViewController.h"

@class TrainingSubMenuViewController;

@interface TrainingMenuViewController ()

@end

@implementation TrainingMenuViewController
@synthesize trainingSubMenuViewController;
@synthesize switchers;
@synthesize buttons;
@synthesize navigationBar;
@synthesize backButton;
@synthesize toolBar;
@synthesize navigationBarLabel;
@synthesize scrollView;
@synthesize listeningButton;
@synthesize picture_wordButton;
@synthesize gruppingButton;
@synthesize punctuationButton;
@synthesize associationButton;
@synthesize accentButton;
@synthesize grammaticButton;
@synthesize listeningSwitch;
@synthesize picture_wordSwitch;
@synthesize groupingSwitch;
@synthesize punctuationSwitch;
@synthesize associationSwitch;
@synthesize accentSwitch;
@synthesize grammaticSwitch;
@synthesize okButton;
@synthesize choosed0;

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
    [navigationBar setBackgroundImage:[UIImage imageNamed:@"navigationBar.png"] forBarMetrics:UIBarMetricsDefault];
    [toolBar setBackgroundImage:[UIImage imageNamed:@"TabBar.png"] forToolbarPosition:UIToolbarPositionAny barMetrics:UIBarMetricsDefault];
    [navigationBar setFrame:CGRectMake(0, 0, 480, 38)];
    [toolBar setFrame:CGRectMake(0, 245, 480, 55)];
    [scrollView setFrame:CGRectMake(0, 38, 480, 207)];
    [scrollView setContentSize:CGSizeMake(480, 360)];
    [listeningButton setHidden:NO];
    self.switchers = [NSArray arrayWithObjects:punctuationSwitch,listeningSwitch,picture_wordSwitch, groupingSwitch,associationSwitch,accentSwitch,grammaticSwitch, nil];
    self.buttons = [NSArray arrayWithObjects:punctuationButton,listeningButton,picture_wordButton,gruppingButton,associationButton,accentButton,grammaticButton, nil];
    choosed0 = [[NSMutableArray alloc]init];
    
}

- (void)viewDidUnload
{
    [self setNavigationBar:nil];
    [self setBackButton:nil];
    [self setToolBar:nil];
    [self setNavigationBarLabel:nil];
    [self setScrollView:nil];
    [self setListeningButton:nil];
    [self setPicture_wordButton:nil];
    [self setGruppingButton:nil];
    [self setListeningSwitch:nil];
    [self setPicture_wordSwitch:nil];
    [self setGroupingSwitch:nil];
    [self setOkButton:nil];
    [self setPunctuationButton:nil];
    [self setAssociationButton:nil];
    [self setAccentButton:nil];
    [self setGrammaticButton:nil];
    [self setPunctuationSwitch:nil];
    [self setAssociationSwitch:nil];
    [self setAccentSwitch:nil];
    [self setGrammaticSwitch:nil];
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

- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex {
	if (alertView.tag == 1) {
		if (buttonIndex == 1) {
             
			for (UISwitch * switcher in switchers) {
                if (switcher.isOn)
                {
                    //UIButton * button =(UIButton)buttons.objectAtIndex:[switchers indexOfObject:switcher];
                    //[trainingSubMenuViewController.choosed addObject:];
                    
                    UIButton * button = [UIButton alloc];
                    button = [buttons objectAtIndex:[switchers indexOfObject:switcher]];
                    [choosed0 addObject:button.titleLabel.text];
                    //NSLog(@"%d",choosed0.count);
                }
            }
            self.trainingSubMenuViewController = [[TrainingSubMenuViewController alloc]initWithNibName:@"TrainingSubMenuViewController" bundle:nil];
            [self.navigationController pushViewController:trainingSubMenuViewController animated:YES];
            trainingSubMenuViewController.choosed = choosed0;
			[trainingSubMenuViewController startTimer];
		}
	} else if (alertView.tag == 2) {
        
	}
}

- (IBAction)okButtonSelector:(id)sender {
    choosed0 = [NSMutableArray arrayWithObjects:nil];
    BOOL allOff = true;
    for (UISwitch * switcher in switchers)
    {
        if (switcher.isOn) {
            allOff = false;
        }
    }
    if (allOff) {
        UIAlertView * errorMessage = [[UIAlertView alloc] initWithTitle:@"Ошибка" message:@"Не выбрано ни одно задание" delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil];
        [errorMessage show];
    }
    else {
        UIAlertView * askMessage = [[UIAlertView alloc] initWithTitle:@"Вы готовы?" message:@"Нажав кнопку Да, начнется выполнение теста" delegate:self cancelButtonTitle:@"Нет" otherButtonTitles:@"Да", nil];
        askMessage.tag=1;
        [askMessage show];
        if (false) {
            
        }
        else {
    
        }
    }
}
@end
