//
//  DetailViewController.m
//  LifeStyle
//
//  Created by DetroitLabs on 6/4/16.
//  Copyright © 2016 DetroitLabs. All rights reserved.
//

#import "DetailViewController.h"

@interface DetailViewController ()

@end
int count = 0;

@implementation DetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.textViewDetails.text = _habit.habitDescription;
    
    [self setImagesForHabits];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//-(void)setCompletionSwitch:(UISegmentedControl *)completionSwitch{
//    if (_completionSwitch.selectedSegmentIndex == 1) {
//        NSLog(@"WEEEEE");
//    } else {
//        NSLog(@"Booooo");
//    }
//}


- (IBAction)completeButtonPressed:(id)sender {
//    UIButton *button = (UIButton *)sender;
//    [button setBackgroundColor:[UIColor redColor]];
    
    if (count == 0) {
        [_completButton setBackgroundColor:[UIColor greenColor]];
        [_completButton setTitle:@"Completed" forState: UIControlStateNormal];
        []
        count++;
    }else if(count == 1){
        [_completButton setBackgroundColor:[UIColor redColor]];
        [_completButton setTitle:@"Do Work" forState: UIControlStateNormal];
        count = 0;
    }
    
}

- (void)setImagesForHabits {
    
    if ([_habit.habitName  isEqual: @"Meditate"]){
       [_detailImage setImage:[UIImage imageNamed:@"buddha01.jpg"]];
    } else if ([_habit.habitName  isEqual: @"Run"]) {
        [_detailImage setImage:[UIImage imageNamed:@"forrest-gump.jpg"]];
    } else {
        [_detailImage setImage:[UIImage imageNamed:@"css_code.jpg"]];
    }
    

}


@end
