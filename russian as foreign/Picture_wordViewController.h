//
//  Picture_wordViewController.h
//  русский как иностранный
//
//  Created by Lion User on 28.08.12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

#define imageWidth 216

@interface Picture_wordViewController : UIViewController
{
    int nextPage;
}
@property (weak, nonatomic) IBOutlet UINavigationBar *navigationBar;
@property (weak, nonatomic) IBOutlet UIBarButtonItem *backButton;
@property (weak, nonatomic) IBOutlet UIImageView *timerBack;
@property (weak, nonatomic) IBOutlet UILabel *timerLabel;
@property (weak, nonatomic) IBOutlet UIToolbar *toolBar;
- (IBAction)backButtonSelector:(id)sender;
@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;
@property (strong, nonatomic) IBOutlet UISwipeGestureRecognizer *swipeRightRecognizer;
@property (strong, nonatomic) IBOutlet UISwipeGestureRecognizer *swipeLeftRecognizer;
@property (retain, nonatomic) NSMutableArray *imageArray;
@property (retain, nonatomic) NSArray *imageNameArray;
@property (retain, nonatomic) NSArray *wordArray;
@property (weak, nonatomic) IBOutlet UILabel *wordLabel;
- (IBAction)swipeRight:(id)sender;
- (IBAction)swipeLeft:(id)sender;
- (IBAction)playButton:(id)sender;

@end
