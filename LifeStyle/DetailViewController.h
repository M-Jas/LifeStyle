//
//  DetailViewController.h
//  LifeStyle
//
//  Created by DetroitLabs on 6/4/16.
//  Copyright © 2016 DetroitLabs. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Habit.h"
#import "ViewController.h"

@interface DetailViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextView *textViewDetails;
@property (weak, nonatomic) IBOutlet UIImageView *detailImage;
@property (strong, nonatomic) Habit *habit;

@property (weak, nonatomic) IBOutlet UIButton *completButton;

@property (weak, nonatomic) IBOutlet UISegmentedControl *completionSwitch;

- (IBAction)completeButtonPressed:(id)sender;


@end
