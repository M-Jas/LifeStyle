//
//  Habit.m
//  LifeStyle
//
//  Created by DetroitLabs on 6/4/16.
//  Copyright © 2016 DetroitLabs. All rights reserved.
//

#import "Habit.h"

@implementation Habit

-(id)initWithHabitName:(NSString *)name habitDesc:(NSString *)habitDescription {
        self = [super init];
        if(self){
            _habitName = name;
            _habitDescription = habitDescription;
        }
        return self;
}



@end
