//
//  Picture_word2ViewController.m
//  russian as foreign
//
//  Created by Lion User on 10.09.12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "Picture_word2ViewController.h"

@interface Picture_word2ViewController ()

@end

@implementation Picture_word2ViewController
@synthesize navigationBar;
@synthesize timerLabel;
@synthesize timerBack;
@synthesize backButton;
@synthesize nextButton;
@synthesize toolBar;
@synthesize scrollView;
@synthesize textField;
@synthesize playButton;
@synthesize imageArray;
@synthesize swipeRightRecognizer;
@synthesize swipeLeftRecognizer;
@synthesize imageNameArray;
@synthesize answerArray;

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
    nextPage = 0;
    [timerBack setFrame:CGRectMake(0, 0, 58, 32)];
    [timerLabel setFrame:CGRectMake(0, 0, 58, 32)];
    [navigationBar setFrame:CGRectMake(58, 0, 422, 38)];
    [toolBar setFrame:CGRectMake(0, 245, 480, 55)];
    [navigationBar setBackgroundImage:[UIImage imageNamed:@"navigationBar.png"] forBarMetrics:UIBarMetricsDefault];
    [toolBar setBackgroundImage:[UIImage imageNamed:@"tabBar.png"] forToolbarPosition:UIToolbarPositionAny barMetrics:UIBarMetricsDefault];
    [scrollView setContentSize:CGSizeMake(246+ imageNameArray.count*imageWidth, 161)];
    answerArray = [[NSMutableArray alloc] init];
    int x=127;
    for (NSString* name in imageNameArray)
    {
        UIImageView * imageViewLoc = [[UIImageView alloc] initWithImage:[UIImage imageNamed:name]];
        [imageViewLoc setFrame:CGRectMake(x, 0, imageWidth, scrollView.frame.size.height)];
        [imageArray addObject:imageViewLoc];
        [scrollView addSubview:imageViewLoc];
        x+=224;
        [answerArray addObject:@""];
    }
    
    //[backgrondButton setImage:[UIImage imageNamed:@"NavigationBar.png"] forState:UIControlStateNormal];
    //[backgrondButton setBackgroundImage:<#(UIImage *)#> forState:<#(UIControlState)#>

    // Do any additional setup after loading the view from its nib.
}

- (void)viewDidUnload
{
    [self setNavigationBar:nil];
    [self setTimerLabel:nil];
    [self setBackButton:nil];
    [self setNextButton:nil];
    [self setToolBar:nil];
    [self setScrollView:nil];
    [self setTextField:nil];
    [self setPlayButton:nil];
    [self setTimerBack:nil];
    [self setSwipeRightRecognizer:nil];
    [self setSwipeLeftRecognizer:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return ((interfaceOrientation != UIInterfaceOrientationPortrait)&&(interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown));
}

- (IBAction)backButtonSelect:(id)sender {
    [self.navigationController popViewControllerAnimated:YES];
}

- (IBAction)swipeRight:(id)sender {
    //UIImageView * image1 = [imageArray objectAtIndex:0];
    CGFloat contentOffset = scrollView.contentOffset.x - (imageWidth + 8);
    nextPage = (int)(contentOffset/(imageWidth + 8));
    if (nextPage >=0)
    {
        [scrollView setContentOffset:CGPointMake(nextPage*(imageWidth+8), 0) animated:YES];
        textField.text = [answerArray objectAtIndex:nextPage];
        //wordLabel.text = [wordArray objectAtIndex:nextPage];
    }
}

- (IBAction)applyButtonTap:(id)sender
{
     [textField resignFirstResponder];
    [UIView animateWithDuration:0.2 animations:^{
        self.view.transform = CGAffineTransformIdentity;
    } completion:^(BOOL finished){
        
    }];
    [answerArray replaceObjectAtIndex:nextPage withObject:textField.text];
//    
//    [textField resignFirstResponder];
//    
//    [UIView beginAnimations:nil context:nil];
//    [UIView setAnimationDuration:0.5f];
//    
//    self.view.transform = CGAffineTransformIdentity;
//    
//    [UIView commitAnimations];
}

- (IBAction)swipeLeft:(id)sender {
    //UIImageView * image = [imageArray objectAtIndex:0];
    CGFloat contentOffset = scrollView.contentOffset.x + (imageWidth + 8);
    nextPage = (int)(contentOffset/(imageWidth + 8));
    if (nextPage < imageNameArray.count)
    {
        [scrollView setContentOffset:CGPointMake(nextPage*(imageWidth+8), 0) animated:YES];
        textField.text = [answerArray objectAtIndex:nextPage];
        //wordLabel.text = [wordArray objectAtIndex:nextPage];
    }
}

#pragma mark - UITextFieldDelegate

- (BOOL)textFieldShouldBeginEditing:(UITextField *)textField
{
    [UIView animateWithDuration:0.2 animations:^{
        self.view.transform = CGAffineTransformMakeTranslation(0.0f, -112.0f);
    } completion:^(BOOL finished){
         
     }];
//    
//    [UIView beginAnimations:nil context:nil];
//    [UIView setAnimationDuration:0.5f];
//    
//    self.view.transform = CGAffineTransformMakeTranslation(0.0f, -100.0f);
//    
//    [UIView commitAnimations];
    
    return YES;
}

@end
