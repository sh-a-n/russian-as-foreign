//
//  ViewController.h
//  русский как иностранный
//
//  Created by Lion User on 27.08.12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class TrainingMenuViewController;

@interface ViewController : UIViewController

@property (strong, nonatomic) TrainingMenuViewController * trainingMenuViewController;

@property (weak, nonatomic) IBOutlet UILabel *bigLabel;
@property (weak, nonatomic) IBOutlet UILabel *smallLabel;
@property (weak, nonatomic) IBOutlet UIButton *trainingButton;
@property (weak, nonatomic) IBOutlet UIButton *testButton;
@property (weak, nonatomic) IBOutlet UIButton *settingsButton;
@property (weak, nonatomic) IBOutlet UIButton *statButton;
- (IBAction)trainingButtonTap:(id)sender;
@property (weak, nonatomic) IBOutlet UIButton *aboutButton;
@end
