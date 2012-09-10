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
- (IBAction)cancelButtonSelector:(id)sender;
- (IBAction)okButtonSelector:(id)sender;

@end
