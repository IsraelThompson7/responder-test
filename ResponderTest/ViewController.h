//
//  ViewController.h
//  ResponderTest
//
//  Created by Eric J on 12/4/12.
//  Copyright (c) 2012 Aerych. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITextViewDelegate, UIAlertViewDelegate>

@property (nonatomic, strong) IBOutlet UITextView *textView;

@end
