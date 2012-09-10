//
//  Picture_word2ViewController.h
//  russian as foreign
//
//  Created by Lion User on 10.09.12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

#define imageWidth 216

@interface Picture_word2ViewController : UIViewController
{
    int nextPage;
}
@property (weak, nonatomic) IBOutlet UINavigationBar *navigationBar;
@property (weak, nonatomic) IBOutlet UILabel *timerLabel;
@property (weak, nonatomic) IBOutlet UIImageView *timerBack;
@property (weak, nonatomic) IBOutlet UIBarButtonItem *backButton;
@property (weak, nonatomic) IBOutlet UIBarButtonItem *nextButton;
@property (weak, nonatomic) IBOutlet UIToolbar *toolBar;
@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;
@property (weak, nonatomic) IBOutlet UITextField *textField;
@property (weak, nonatomic) IBOutlet UIButton *playButton;
@property (retain, nonatomic) NSArray *imageNameArray;
@property (retain, nonatomic) NSMutableArray *imageArray;
@property (strong, nonatomic) IBOutlet UISwipeGestureRecognizer *swipeRightRecognizer;
@property (strong, nonatomic) IBOutlet UISwipeGestureRecognizer *swipeLeftRecognizer;
- (IBAction)backButtonSelect:(id)sender;
- (IBAction)swipeLeft:(id)sender;
- (IBAction)swipeRight:(id)sender;
@end
