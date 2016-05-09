//
//  FISAppDelegate.m
//  WWDCBadgesMethods
//
//  Created by Chris Gonzales on 5/28/14.
//  Copyright (c) 2014 FIS. All rights reserved.
//

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    return YES;
}

/*
 
 * Define your methods between application:didFinishLaunchingWithOptions and the @end marker
 
 */

- ( NSString * )badgeForSpeaker:(NSString *)speaker {
    NSMutableString *helloMyName = [ @"Hello, my name is" mutableCopy ] ;
    
    [helloMyName appendFormat:@" %@.", speaker];
    
    NSLog(@"%@", helloMyName);
    
    return helloMyName;
}

// I want to create an array, create a (mutable?) string with the badge message, and have a for loop for each speaker's name, add it to message, add to array
- ( NSArray * )badgesForSpeakers:(NSArray *)speakers {
    NSMutableArray *speakerBadges = [ NSMutableArray new ];
    NSString *hello = @"Hello, my name is";
    for ( NSUInteger i = 0; i < [ speakers count ]; i++ ) {
        NSString *speaker = speakers[i];
        NSMutableString *helloMyName = [hello mutableCopy];
        [ helloMyName appendFormat:@" %@.", speaker];
        [ speakerBadges addObject:helloMyName ];
        NSLog(@"%@", helloMyName);
    }
    return speakerBadges;
}

- ( NSArray * )greetingsAndRoomAssignmentsForSpeakers:(NSArray *)speakers {
    NSString *greetings = @"Welcome";
    NSMutableString *room = [ @"You'll be in dressing room" mutableCopy ] ;
    
    NSMutableArray *roomAssignments = [ NSMutableArray new ] ;
    
    for ( NSUInteger i = 0; i < [ speakers count ]; i++ ) {
        NSUInteger *roomNo = i + 1;
        NSString *speaker = speakers[i];
        NSMutableString *welcome = [ greetings mutableCopy ];
        
        [ welcome appendFormat:@", %@! %@ %lu.", speaker, room, roomNo ];
        [ roomAssignments addObject:welcome ];
        NSLog(@"%@", welcome);
    }
    
    return roomAssignments;
}
@end
