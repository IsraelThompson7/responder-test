//
//  ViewController.m
//  ResponderTest
//
//  Created by Eric J on 12/4/12.
//  Copyright (c) 2012 Aerych. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

- (void)handleAlertButtonTapped:(id)sender;
- (void)handleDoneButtonTapped:(id)sender;
- (void)handleKeyboardWillShow:(NSNotification *)notification;
- (void)handleKeyboardDidShow:(NSNotification *)notification;
- (void)handleKeyboardWillHide:(NSNotification *)notification;
- (void)handleKeyboardDidHide:(NSNotification *)notification;

@end

@implementation ViewController

@synthesize textView;

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    UIBarButtonItem *alertButton = [[UIBarButtonItem alloc] initWithTitle:@"Alert" style:UIBarButtonItemStyleBordered target:self action:@selector(handleAlertButtonTapped:)];
    UIBarButtonItem *spacer = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemFlexibleSpace target:nil action:nil];
    UIBarButtonItem *doneButton = [[UIBarButtonItem alloc] initWithTitle:@"Done" style:UIBarButtonItemStyleBordered target:self action:@selector(handleDoneButtonTapped:)];
    UIToolbar *toolbar = [[UIToolbar alloc] initWithFrame:CGRectMake(0.0, 0.0, self.view.frame.size.width, 44.0)];
    toolbar.barStyle = UIBarStyleBlack;
    toolbar.items = @[alertButton, spacer, doneButton];
    
    UIView *accessoryView = [[UIView alloc] initWithFrame:CGRectMake(0.0, 0.0, self.view.frame.size.width, 44.0)];
    [accessoryView addSubview:toolbar];
    textView.inputAccessoryView = toolbar;
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(handleKeyboardWillShow:) name:UIKeyboardWillShowNotification object:nil];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(handleKeyboardDidShow:) name:UIKeyboardDidShowNotification object:nil];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(handleKeyboardWillHide:) name:UIKeyboardWillHideNotification object:nil];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(handleKeyboardDidHide:) name:UIKeyboardDidHideNotification object:nil];

}


- (void)handleAlertButtonTapped:(id)sender {
    NSLog(@"%@", NSStringFromSelector(_cmd));
    UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"Styled AlertView"
                                                        message:nil
                                                       delegate:self
                                              cancelButtonTitle:@"OK"
                                              otherButtonTitles:nil, nil];
    [alertView setAlertViewStyle:UIAlertViewStyleLoginAndPasswordInput];
    [alertView show];
}


- (void)handleDoneButtonTapped:(id)sender {
    [textView resignFirstResponder];
}


#pragma mark -
#pragma mark TextView Delegate Methods

- (BOOL)textViewShouldEndEditing:(UITextView *)textView {
    NSLog(@"%@", NSStringFromSelector(_cmd));
    return YES;
}


- (void)textViewDidEndEditing:(UITextView *)textView {
    NSLog(@"%@", NSStringFromSelector(_cmd));
}


#pragma mark -
#pragma mark AlertView Delegate methods

- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex {
    NSLog(@"%@", NSStringFromSelector(_cmd));
    [textView becomeFirstResponder]; // Not a solution.
}

- (void)alertView:(UIAlertView *)alertView willDismissWithButtonIndex:(NSInteger)buttonIndex {
    NSLog(@"%@", NSStringFromSelector(_cmd));
    [textView becomeFirstResponder]; // Not a solution.
}

- (void)alertView:(UIAlertView *)alertView didDismissWithButtonIndex:(NSInteger)buttonIndex {
    NSLog(@"%@", NSStringFromSelector(_cmd));
    [textView becomeFirstResponder]; // Not a solution.
}


#pragma mark -
#pragma mark Keyboard Notification Methods

- (void)handleKeyboardWillShow:(NSNotification *)notification {
    NSLog(@"%@", NSStringFromSelector(_cmd));
    [textView becomeFirstResponder]; // Not a solution.
}


- (void)handleKeyboardDidShow:(NSNotification *)notification {
    NSLog(@"%@", NSStringFromSelector(_cmd));
    [textView becomeFirstResponder]; // Not a solution.
}


- (void)handleKeyboardWillHide:(NSNotification *)notification {
    NSLog(@"%@", NSStringFromSelector(_cmd));
    [textView becomeFirstResponder]; // Not a solution.
}


- (void)handleKeyboardDidHide:(NSNotification *)notification {
    NSLog(@"%@", NSStringFromSelector(_cmd));
    [textView becomeFirstResponder]; // Not a solution.
}

@end
