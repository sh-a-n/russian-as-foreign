//
//  TrainingSubMenuViewController.h
//  русский как иностранный
//
//  Created by Lion User on 28.08.12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class ListeningViewController;
@class FilmViewController;
@class GroupingViewController;
@class Picture_wordViewController;
@class Picture_word2ViewController;
@class AccentViewController;
@class GrammaticViewController;
@class AssociationViewController;
@class PunctuationViewController;

@interface TrainingSubMenuViewController : UIViewController
{
    NSMutableArray *choosed;
    NSData * startDate;
}

@property (strong, nonatomic) ListeningViewController * listeningViewController;
@property (strong, nonatomic) FilmViewController * filmViewController;
@property (strong, nonatomic) GroupingViewController * groupingViewController;
@property (strong, nonatomic) Picture_wordViewController * picture_wordViewController;
@property (strong, nonatomic) Picture_word2ViewController * picture_word2ViewController;
@property (strong, nonatomic) AccentViewController * accentViewcontroller;
@property (strong, nonatomic) GrammaticViewController * grammaticviewController;
@property (strong, nonatomic) AssociationViewController * associationViewController;
@property (strong, nonatomic) PunctuationViewController * punctuatonViewController;
@property (nonatomic, retain) NSData * startDate;
@property (nonatomic, retain) NSTimer * timer;
@property (weak, nonatomic) IBOutlet UILabel *navigationBarLabel;
@property (nonatomic, retain) NSMutableArray * choosed;
@property (weak, nonatomic) IBOutlet UINavigationBar *navigationBar;
@property (weak, nonatomic) IBOutlet UIBarButtonItem *backButton;

@property (weak, nonatomic) IBOutlet UITableView *myTableView;
@property (weak, nonatomic) IBOutlet UIImageView *timerBack;
@property (weak, nonatomic) IBOutlet UILabel *timerLabel;
@property (weak, nonatomic) IBOutlet UIToolbar *toolBar;

- (IBAction)backButtonSelector:(id)sender;
- (IBAction)startTimer;
- (IBAction)stopTimer;
/*- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section;
- (NSInteger)numberOfsectionInTableView:(UITableView*)tableView;
- (UITableViewCell*)tableView:(UITableView*)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath;*/
@end
