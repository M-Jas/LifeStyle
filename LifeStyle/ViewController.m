//
//  ViewController.m
//  LifeStyle
//
//  Created by DetroitLabs on 6/4/16.
//  Copyright © 2016 DetroitLabs. All rights reserved.
//

#import "ViewController.h"
#import "Habit.h"


@interface ViewController ()

@end

NSMutableArray *habitsArray;

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    Habit *running =[[Habit alloc]initWithHabitName: @"Run" habitDesc:@"Run for at lease 2 miles"];
    
    Habit *code =[[Habit alloc]initWithHabitName:@"Code" habitDesc:@"Spent 2 hours in iOS coding"];
    
    Habit *meditate =[[Habit alloc]initWithHabitName:@"Meditate" habitDesc:@"Meditate 2 hours for peace of mind"];
    
    habitsArray = [[NSMutableArray alloc]initWithObjects:running, code, meditate, nil];
    

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)tableView:(UITableView*)tableView numberOfRowsInSection:(NSInteger)section{
    return [habitsArray count];
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(nonnull NSIndexPath *)indexPath{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
    Habit *habit = [habitsArray objectAtIndex:indexPath.row];
    cell.textLabel.text = habit.habitName;
    [cell setBackgroundColor:[UIColor redColor]];
    return cell;
}

-(void)tableView:(UITableView*)tableView didSelectRowAtIndexPath:(nonnull NSIndexPath *)indexPath {
    [self performSegueWithIdentifier:@"detailViewSegue" sender:self];
}



-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    if ([[segue identifier] isEqualToString:@"detailViewSegue"])
    {
        NSIndexPath *indexPath = [self.habitsTV indexPathForSelectedRow];
        //         Get reference to the destination view controller
        DetailViewController *vc = [segue destinationViewController];
        // Sending the refrence to the viewcontroller
        vc.habit = habitsArray[indexPath.row];
        
    }
}
@end
