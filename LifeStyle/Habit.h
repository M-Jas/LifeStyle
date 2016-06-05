//
//  Habit.h
//  LifeStyle
//
//  Created by DetroitLabs on 6/4/16.
//  Copyright © 2016 DetroitLabs. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Habit : NSObject
@property (strong, nonatomic)NSString *habitName;
@property (strong, nonatomic)NSString *habitDescription;
//@property (nonatomic)UIImage* habitImage;
@property (strong, nonatomic)NSMutableArray *habitsArray;

-(id)initWithHabitName:(NSString *)name habitDesc:(NSString *)habitDescription;

@end
