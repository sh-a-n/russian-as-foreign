//
//  AssociationViewController.h
//  russian as foreign
//
//  Created by Lion User on 10.09.12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AssociationViewController : UIViewController
@property (weak, nonatomic) IBOutlet UINavigationBar *navigationBar;
@property (weak, nonatomic) IBOutlet UIBarButtonItem *cancelNavigationButton;
@property (weak, nonatomic) IBOutlet UIBarButtonItem *okNavigationButton;
@property (weak, nonatomic) IBOutlet UIToolbar *toolBar;
@property (weak, nonatomic) IBOutlet UILabel *timerLabel;
@property (weak, nonatomic) IBOutlet UIImageView *timerBack;
@property (nonatomic, retain) NSArray * firstWordsButtons;
@property (nonatomic, retain) NSArray * secondWordsButtons;
@property (nonatomic, retain) NSMutableArray * firstWords;
@property (nonatomic, retain) NSMutableArray * secondWords;
@property (weak, nonatomic) IBOutlet UIButton *firstWordsButton1;
@property (weak, nonatomic) IBOutlet UIButton *firstWordsButton2;
@property (weak, nonatomic) IBOutlet UIButton *firstWordsButton3;
@property (weak, nonatomic) IBOutlet UIButton *firstWordsButton4;
@property (weak, nonatomic) IBOutlet UIButton *secondWordsButton1;
@property (weak, nonatomic) IBOutlet UIButton *secondWordsButton2;
@property (weak, nonatomic) IBOutlet UIButton *secondWordsButton3;
@property (weak, nonatomic) IBOutlet UIButton *secondWordsButton4;

- (IBAction)cancelButtonSelector:(id)sender;
- (IBAction)okButtonSelector:(id)sender;

@end
