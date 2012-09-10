//
//  TrainingMenuViewController.h
//  русский как иностранный
//
//  Created by Lion User on 28.08.12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class TrainingSubMenuViewController;

@interface TrainingMenuViewController : UIViewController

@property (strong, nonatomic) TrainingSubMenuViewController * trainingSubMenuViewController;
@property (strong, nonatomic) NSArray * switchers;
@property (strong, nonatomic) NSArray * buttons;
@property (nonatomic, retain) NSMutableArray * choosed0;
@property (weak, nonatomic) IBOutlet UINavigationBar *navigationBar;
@property (weak, nonatomic) IBOutlet UIBarButtonItem *backButton;
@property (weak, nonatomic) IBOutlet UIToolbar *toolBar;
@property (weak, nonatomic) IBOutlet UILabel *navigationBarLabel;
@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;
@property (weak, nonatomic) IBOutlet UIButton *listeningButton;
@property (weak, nonatomic) IBOutlet UIButton *picture_wordButton;
@property (weak, nonatomic) IBOutlet UIButton *gruppingButton;
@property (weak, nonatomic) IBOutlet UIButton *punctuationButton;
@property (weak, nonatomic) IBOutlet UIButton *associationButton;
@property (weak, nonatomic) IBOutlet UIButton *accentButton;
@property (weak, nonatomic) IBOutlet UIButton *grammaticButton;
@property (weak, nonatomic) IBOutlet UISwitch *listeningSwitch;
@property (weak, nonatomic) IBOutlet UISwitch *picture_wordSwitch;
@property (weak, nonatomic) IBOutlet UISwitch *groupingSwitch;
@property (weak, nonatomic) IBOutlet UISwitch *punctuationSwitch;
@property (weak, nonatomic) IBOutlet UISwitch *associationSwitch;
@property (weak, nonatomic) IBOutlet UISwitch *accentSwitch;
@property (weak, nonatomic) IBOutlet UISwitch *grammaticSwitch;
@property (weak, nonatomic) IBOutlet UIBarButtonItem *okButton;
- (IBAction)backButtonSelector:(id)sender;
- (IBAction)okButtonSelector:(id)sender;

@end
