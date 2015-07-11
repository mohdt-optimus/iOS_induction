//
//  EmployeeInfo.m
//  MVC
//
//  Created by Asif Noor on 9/23/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "EmployeeInfo.h"

@implementation EmployeeInfo

@synthesize gender,
DOB,
photoPath,
phone,
name,
age,
address,
personalLife,careerArray;
- (id)init
{
    self = [super init];
    if (self) {
        // Initialization code here.
        careerArray = [[NSArray alloc] init];
    }
    
    return self;
}
- (void) dealloc {
    
    [careerArray release];
    [personalLife release];
    [address release];
    [gender release];
    [DOB release];
    [photoPath release];
    [phone release];
    [name release];
    [age release];
    [super dealloc];
    
}
@end
