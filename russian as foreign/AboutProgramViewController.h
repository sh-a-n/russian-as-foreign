//
//  AboutProgramViewController.h
//  russian as foreign
//
//  Created by Lion User on 13.09.12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AboutProgramViewController : UIViewController
@property (weak, nonatomic) IBOutlet UINavigationBar *navigationBar;
@property (weak, nonatomic) IBOutlet UIBarButtonItem *backButton;
@property (weak, nonatomic) IBOutlet UITextView *aboutProgramTextView;
- (IBAction)backButtonSelector:(id)sender;

@end
