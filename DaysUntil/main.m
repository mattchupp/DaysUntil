//
//  main.m
//  DaysUntil
//
//  Created by Matthew Chupp on 5/2/15.
//  Copyright (c) 2015 MattChupp. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        
        NSDate *lastDate = [NSDate date];
        NSDate *todaysDate = [NSDate date];
        
        todaysDate = [[NSDate alloc] init];
    
        // how many days to add to date
        
        // ** eventually needs to be console input for a date ** 
        int day = 3;
        
        lastDate = [todaysDate dateByAddingTimeInterval:60*60*24*day];
        
        
        // days until weekend
        int daysToAdd = 0;
        
        NSDate *newDate = [[NSDate alloc] init];
        
        // keeps adding a day until it reaches the date needed
        while (![newDate isEqualToDate: lastDate]) {
            
            daysToAdd++;
            newDate = [todaysDate dateByAddingTimeInterval:60*60*24*daysToAdd]; // adds a day
            
        }
        
        NSString *dateString = [NSDateFormatter localizedStringFromDate:lastDate
                                                              dateStyle:NSDateFormatterShortStyle
                                                              timeStyle:NSDateFormatterFullStyle];
        
        if (daysToAdd > 1) {
            
            NSLog(@"There are %i days until %@", daysToAdd, dateString);
            
        } else {
            
           NSLog(@"There is %i day until %@", daysToAdd, dateString);
        }
        
        
    }
    return 0;
}
