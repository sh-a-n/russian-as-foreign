//
//  GroupingViewController.h
//  русский как иностранный
//
//  Created by Lion User on 28.08.12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface GroupingViewController : UIViewController
{
    NSMutableArray * first;
    NSMutableArray * second;
    NSMutableArray * third;
    NSMutableArray * sourse;
}

@property (weak, nonatomic) IBOutlet UINavigationBar *navigationBar;
@property (weak, nonatomic) IBOutlet UIBarButtonItem *abortButton;
@property (weak, nonatomic) IBOutlet UIToolbar *toolBar;
@property (weak, nonatomic) IBOutlet UIImageView *timerBack;
@property (weak, nonatomic) IBOutlet UILabel *timerLabel;
@property (weak, nonatomic) IBOutlet UILabel *WordLabel;
@property (weak, nonatomic) IBOutlet UIButton *Button1;
@property (weak, nonatomic) IBOutlet UIButton *Button2;
@property (weak, nonatomic) IBOutlet UIButton *Button3;
@property (weak, nonatomic) IBOutlet UIBarButtonItem *CheckButton;
@property (weak, nonatomic) IBOutlet UIToolbar *ToolBarGrupps;
@property (weak, nonatomic) IBOutlet UIButton *RedButton;
@property (weak, nonatomic) IBOutlet UIButton *BlueButton;
@property (weak, nonatomic) IBOutlet UIButton *GreenButton;
@property (weak, nonatomic) IBOutlet UILabel *RedButtonLabel;
@property (weak, nonatomic) IBOutlet UILabel *BlueButtonLabel;
@property (weak, nonatomic) IBOutlet UILabel *GreenButtonLabel;
@property (nonatomic, retain) NSMutableArray * first;
@property (nonatomic, retain) NSMutableArray * second;
@property (nonatomic, retain) NSMutableArray * third;
@property (nonatomic, retain) NSMutableArray * sourse;
- (IBAction)abortButtonSelector:(id)sender;

@end
